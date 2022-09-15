class Course < ApplicationRecord
  belongs_to :user
  has_many :sessions

  has_one_attached :photo
  has_many_attached :documents
end
