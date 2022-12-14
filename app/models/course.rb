class Course < ApplicationRecord
  belongs_to :user
  has_many :sessions, dependent: :destroy
  has_many :student_courses, dependent: :destroy

  has_one_attached :photo
  has_many_attached :documents
  has_one :calendar

  has_many :results, dependent: :destroy
end
