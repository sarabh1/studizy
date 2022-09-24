class Chatroom < ApplicationRecord
  has_many :chatroom_users
  has_many :users, through: :chatroom_users
  has_many :messages, dependent: :destroy
  has_many_attached :pdfs
end
