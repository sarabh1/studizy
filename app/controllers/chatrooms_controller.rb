class ChatroomsController < ApplicationController

  def index
    @chatrooms= Chatroom.all

  end
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @messages = Message.where(chatroom_id: @chatroom.id)
  end
end
