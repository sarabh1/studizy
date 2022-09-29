class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
  end

  def show
    @chatroom = Chatroom.includes(:messages).find(params[:id])
    @message = Message.new
    @messages = @chatroom.messages
  end

  # private

  # def chatroom_params
  #   params.require(:chatroom).permit(:content, :body, attachments: [])
  # end
end
