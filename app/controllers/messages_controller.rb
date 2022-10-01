class MessagesController < ApplicationController
  
  def index
    @messages = Message.all
  end

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save!
      ChatroomChannel.broadcast_to(
        @chatroom,
        message: render_to_string(partial: "message", locals: { message: @message }),
        sender_id: @message.user.id
      )
      head :ok
    else
      render "chatrooms/show"
    end
  end


  private

  # def message_params
  #   params.require(:message).permit(:content)
  # end



  def message_params
    params.require(:message).permit(:content, :body, attachments: [])
  end
end
