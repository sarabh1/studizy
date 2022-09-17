class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :student_courses
  has_many :courses, through: :student_courses
  has_many :sessions, through: :courses

  has_many :chatroom_user
  has_many :chatrooms, through: :chatroom_users
  has_many :messages
end
