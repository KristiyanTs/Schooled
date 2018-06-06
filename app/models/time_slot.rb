class TimeSlot < ApplicationRecord
  belongs_to :school_year

  has_many :schedules
  has_many :courses, through: :schedules

  def self.create_week_daily(school_year_id:, start:, finish:, period_start:, period_end:)
    time_slots = []
    (period_start.to_i..period_end.to_i).step(1.day) do |day|
      day = Time.at(day)
      s = Utils.datetime_from_date_and_time(day, start)
      e = Utils.datetime_from_date_and_time(day, finish)
      time_slots << { start: s, end: e, school_year_id: school_year_id }
    end
    TimeSlot.create(time_slots)
  end
end
