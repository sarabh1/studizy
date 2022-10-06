class CreateBusinessWeekCalendarSimpleCalendars < ActiveRecord::Migration[6.1]
  def change
    create_table :business_week_calendar_simple_calendars do |t|

      t.timestamps
    end
  end
end
