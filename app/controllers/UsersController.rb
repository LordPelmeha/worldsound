require 'net/http'
require 'uri'
require 'json'
require 'firebase'

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

    # Получаем данные пользователя через Firebase Authentication
    firebase_auth_client = FirebaseAuth.client
    user_data = firebase_auth_client.get("users/#{user_id}")

    if user_data.success?
      @user = user_data.body
    else
      flash[:error] = "Не удалось загрузить данные пользователя."
      redirect_to root_path
      return
    end

    # Получаем сообщения пользователя через Realtime Database
    firebase_db_client = FirebaseDB.client
    messages_data = firebase_db_client.get("messages/#{user_id}")

    if messages_data.success?
      @messages = messages_data.body
    else
      flash[:error] = "Не удалось загрузить сообщения."
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
