class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
<<<<<<< HEAD
    # @chatroom_users = ChatroomUser.all
    # @chatroom_users = ChatroomUser.where(chatroom_id: @chatroom.id)
    # @chatroom_user = ChatroomUSer.find(params[:id])
=======
    @users = User.all
>>>>>>> a248515ad186896d8dea890c76168488ced333eb
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    # @users = Chatroom.users
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
