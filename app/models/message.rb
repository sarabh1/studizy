class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user, dependent: :destroy
end
