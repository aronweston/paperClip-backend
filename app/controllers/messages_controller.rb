class MessagesController < ApplicationController
  def index
    messages = Message.all
    render json: messages
  end

  def create
    message = Message.new(message_params)
    message.save
  end
  
  private
  
  def message_params
    params.require(:message).permit(:text, :chat_id, :user_id)
  end
end
