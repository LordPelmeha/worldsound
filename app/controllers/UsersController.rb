require 'net/http'
require 'uri'
require 'json'

class UsersController < ApplicationController
  def index
    if session[:user_id]
      redirect_to root_path
    end
  end

  # For handling signup request
  def signup
    email = params[:email]
    password = params[:password]

    # Полный URL для Firebase Authentication API
    uri = URI(ENV['FIREBASE_SIGNUP'])

    # Параметры для запроса
    body = {
      email: email,
      password: password,
      returnSecureToken: true
    }

    # Отправка POST-запроса
    res = Net::HTTP.post(
      uri,
      body.to_json,
      "Content-Type" => "application/json"
    )

    data = JSON.parse(res.body)

    if res.is_a?(Net::HTTPSuccess)
      
    else
      flash[:error] = data["error"]["message"]
      render :signup
    end
  end


  def login
    email = params[:email]
    password = params[:password]

    uri = URI(ENV['FIREBASE_LOGIN'])

    res = Net::HTTP.post_form(uri, 'email' => email, 'password' => password)

    data = JSON.parse(res.body)

    if res.is_a?(Net::HTTPSuccess)
      session[:user_id] = data['localId']
      redirect_to root_path
      
    
    else
      flash[:error] = data['error']['message']
      render :login
    end
  end

  def dashboard
    if session[:user_id].nil?
      redirect_to login_path, alert: "Пожалуйста, войдите в систему."
    end
    # Здесь можно отобразить данные пользователя
  end

  def logout
    session.clear
    redirect_to root_path
  end
end