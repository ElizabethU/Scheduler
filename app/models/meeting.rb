class Meeting < ActiveRecord::Base
  validates :exec_id, presence: true
  #alias_method :starts_at, :start
  extend SimpleCalendar
  has_calendar :attribute => :start
  belongs_to :exec
  belongs_to :user

  scope :available, -> { where(user_id: nil) }

  def available?
    user_id == nil
  end
end
