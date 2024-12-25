class ContactsController < ApplicationController
  def contact
    @message = Message.new
  end

  def create
    require 'firebase'


    base_uri = ENV['FIREBASE_BASE_URI']
    private_key_json = File.read(ENV['FIREBASE_CREDENTIALS'])
    firebase = Firebase::Client.new(base_uri, private_key_json) 

    data = {
     name: params[:name],
     email: params[:email],
     subject: params[:subject],
     body: params[:body]
    }
 
    response = firebase.push("messages", data)
 
    if response.success?
      flash[:notice] = "Ваше сообщение отправлено!"
    else
      flash[:alert] = "Произошла ошибка при отправке сообщения."
    end
      redirect_to contact_path
    rescue => e
      logger.error "Ошибка при отправке данных в Firebase: #{e.message}, #{e.backtrace.join("\n")}"
      flash[:alert] = "Произошла ошибка. Попробуйте позже."
      redirect_to contact_path
  end

  private

  def message_params
    params.permit(:name, :email, :subject, :body)
  end
end
