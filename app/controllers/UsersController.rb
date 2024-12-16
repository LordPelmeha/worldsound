require 'net/http'
require 'uri'
require 'json'

class UsersController < ApplicationController
  def index
    if session[:user_id]
      redirect_to action: '/'
    end
  end

  # For handling signup request
  def signup
    email = params[:email]
    password = params[:password]

    # Полный URL для Firebase Authentication API
    uri = URI('https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyBM0BOsztVlJy_hE1MjMzhJwV0yJonPchk')

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
      redirect_to action: '/'
    else
      flash[:error] = data['error']['message']
      render :signup
    end
  end


  def login
    email = params[:email]
    password = params[:password]

    uri = URI('https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyBTjel7X8dsnvOts0_QCq_CIteaWswF9P8')

    res = Net::HTTP.post_form(uri, 'email' => email, 'password' => password)

    data = JSON.parse(res.body)

    if res.is_a?(Net::HTTPSuccess)
      session[:user_id] = data['localId']

      redirect_to action: '/'
    end
  end

  def logout
    session.clear
    redirect_to action: '/'
  end
end