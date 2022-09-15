class Course < ApplicationRecord
  belongs_to :user
  has_many :sessions, dependent: :destroy
  has_many :student_courses, dependent: :destroy

  has_one_attached :photo
end
