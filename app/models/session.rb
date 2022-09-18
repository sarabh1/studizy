class Session < ApplicationRecord
  belongs_to :course
  has_one :calendar

  acts_as_taggable_on :tags
  acts_as_taggable_on :Exam, :TD, :Homework #You can also configure multiple tag types per model

  def start_time
    start_date.to_datetime
  end
end
