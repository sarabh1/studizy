class SimpleCalendar::BusinessWeekCalendar < SimpleCalendar::Calendar

  def week_number
    format = Date.beginning_of_week == :sunday ? "%U" : "%V"
    start_date.beginning_of_week.strftime(format).to_i
  end

  def number_of_weeks
    options.fetch(:number_of_weeks, 2)
  end

  def end_week
    week_number + number_of_weeks - 1
  end

  def date_range
    starting = start_date.beginning_of_week
    ending = (start_date + (number_of_weeks - 1).weeks).end_of_week - 2.day

    (starting..ending).to_a.select do |date|
      date.wday != 0 || date.wday != 6
    end
  end

  # private

  # def date_range
  #   beginning = start_date.beginning_of_week
  #   ending    = start_date.end_of_week - 2.day
  #   (beginning..ending).to_a
  # end
end
