class Meeting < ActiveRecord::Base
  #alias_method :starts_at, :start
  extend SimpleCalendar
  has_calendar :attribute => :start
  belongs_to :exec
  belongs_to :user
end
