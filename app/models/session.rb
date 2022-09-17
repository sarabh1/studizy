class Session < ApplicationRecord
  belongs_to :course
  # has_a_calendar
  def start_time
    start_date.to_datetime
  end
end
