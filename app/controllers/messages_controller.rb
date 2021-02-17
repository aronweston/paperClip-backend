class MessagesController < ApplicationController
  def index
    messages = Message.all
    report = []
    
    messages.each { |message|
      report.push({
        :message => message,
        :username => message.user.username
      })
    }

    render json: report
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
