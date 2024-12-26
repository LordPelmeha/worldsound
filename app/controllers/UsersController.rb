class UsersController < ApplicationController
  def signup
    if request.get?
      flash[:error] = nil
    elsif request.post?
      email = params[:email]
      password = params[:password]

      uri = URI(ENV['FIREBASE_SIGNUP'])
      body = { email: email, password: password, returnSecureToken: true }
      res = Net::HTTP.post(uri, body.to_json, "Content-Type" => "application/json")
      data = JSON.parse(res.body)

      if res.is_a?(Net::HTTPSuccess)
        session[:id_token] = data['idToken']
        session[:user_id] = data['localId']
        flash[:notice] = "Регистрация прошла успешно!"
        redirect_to login_path
      else
        flash[:error] = translate_error(data["error"]["message"])
        render :signup
      end
    end
  end

  def login
    if request.get?
      flash[:error] = nil
    elsif request.post?
      email = params[:email]
      password = params[:password]

      uri = URI(ENV['FIREBASE_LOGIN'])
      res = Net::HTTP.post_form(uri, 'email' => email, 'password' => password)
      data = JSON.parse(res.body)

      if res.is_a?(Net::HTTPSuccess)
        session[:user_id] = data['localId']
        session[:id_token] = data['idToken']
        flash[:notice] = "Вход выполнен успешно!"
        redirect_to root_path
      else
        flash[:error] = translate_error(data['error']['message'])
        render :login
      end
    end
  end

  def dashboard
    # Получение ID текущего пользователя
    user_id = session[:user_id]
    id_token = session[:id_token]

    Rails.logger.debug "Dashboard: User ID - #{user_id}, ID Token - #{id_token}"

    # Проверка наличия user_id и id_token
    if user_id.nil? || id_token.nil?
      flash[:error] = "Ошибка сессии. Пожалуйста, войдите снова."
      redirect_to login_path and return
    end

    # Получение данных пользователя из Firebase Authentication
    begin
      url = URI("#{ENV['FIREBASE_AUTH_URI']}/accounts:lookup?key=#{ENV['FIREBASE_API_KEY']}")
      Rails.logger.debug "Firebase Auth URI: #{url}"
      response = Net::HTTP.post(
        url,
        { idToken: id_token }.to_json,
        { "Content-Type" => "application/json" }
      )
      Rails.logger.debug "Response code: #{response.code}"
      Rails.logger.debug "Response body: #{response.body}"
      data = JSON.parse(response.body)

      if response.code.to_i == 200
        @user = data["users"].find { |u| u["localId"] == user_id }
        flash[:error] = "Пользователь не найден." if @user.nil?
      else
        flash[:error] = "Не удалось загрузить данные пользователя."
        Rails.logger.error "Firebase error: #{response.body}"
      end
    rescue => e
      Rails.logger.error "Ошибка подключения к Firebase: #{e.message}"
      flash[:error] = "Произошла ошибка при загрузке данных."
    end

    redirect_to root_path if flash[:error].present?

    # Получение сообщений пользователя из Realtime Database
    firebase_db_client = FirebaseDB.client
    messages_data = firebase_db_client.get("messages/#{user_id}")

    if messages_data.success?
      @messages = messages_data.body
    else
      flash[:error] ||= "Не удалось загрузить сообщения."
    end
  end

  def logout
    session.clear
    flash[:notice] = "Вы успешно вышли из системы."
    redirect_to root_path
  end

  private

  def translate_error(message)
    message = message.strip

    message = message.split(':').first.strip

    case message
    when "EMAIL_NOT_FOUND"
      "Электронная почта не найдена."
    when "INVALID_PASSWORD"
      "Неверный пароль."
    when "USER_DISABLED"
      "Учетная запись отключена."
    when "EMAIL_EXISTS"
      "Электронная почта уже зарегистрирована."
    when "OPERATION_NOT_ALLOWED"
      "Операция не разрешена. Обратитесь в поддержку."
    when "TOO_MANY_ATTEMPTS_TRY_LATER"
      "Слишком много попыток. Попробуйте позже."
    when "INVALID_LOGIN_CREDENTIALS"
      "Неверные учетные данные. Проверьте ваш email и пароль."
    when "INVALID_EMAIL"
      "Некорректный формат электронной почты."
    when "MISSING_PASSWORD"
      "Пароль обязателен."
    when "MISSING_EMAIL"
      "Отсутствует электронная почта."
    when "WEAK_PASSWORD"
      "Пароль должен содержать минимум 6 символов."
    else
      "Произошла неизвестная ошибка: #{message}."
    end
  end
end
