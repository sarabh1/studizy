class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
    @users = User.all
  end

  def show
    @chatroom = Chatroom.includes(:messages).find(params[:id])
    @message = Message.new
    @messages = @chatroom.messages
    @chatroom_users = ChatroomUser.where(chatroom_id: @chatroom.id)
    @chatrooms = Chatroom.all
  end

  # private

  # def chatroom_params
  #   params.require(:chatroom).permit(:content, :body, attachments: [])
  # end
end
