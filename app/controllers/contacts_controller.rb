class ContactsController < ApplicationController
  def contact
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Ваше обращение успешно отправлено!"
      redirect_to contact_path
    else
      flash[:alert] = "Ошибка при отправке обращения. Проверьте данные."
      render :contact
    end
  end

  private

  def message_params
   # params.require(:message).permit(:name, :email, :subject, :message)
    params.permit(:name, :email, :subject, :body)
  end
end
