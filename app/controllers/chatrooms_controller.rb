class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
    # @chatroom_users = ChatroomUser.all
    # @chatroom_users = ChatroomUser.where(chatroom_id: @chatroom.id)
    # @chatroom_user = ChatroomUSer.find(params[:id])
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @messages = @chatroom.messages
  end

  # private

  # def chatroom_params
  #   params.require(:chatroom).permit(:content, :body, attachments: [])
  # end
end
