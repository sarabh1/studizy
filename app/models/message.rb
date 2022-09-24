class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user, dependent: :destroy

  def prev_message
    chatroom.messages.where("id < ?", id).last
  end

end
