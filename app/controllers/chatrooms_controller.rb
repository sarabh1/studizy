class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  # private

  # def chatroom_params
  #   params.require(:chatroom).permit(:content, :body, attachments: [])
  # end
end
