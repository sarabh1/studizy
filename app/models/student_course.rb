class StudentCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :sessions, through: :courses
end
