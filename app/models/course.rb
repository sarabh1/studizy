class Course < ApplicationRecord
  belongs_to :user
  has_many :sessions

  has_one_attached :photo
end
