class Exec < ActiveRecord::Base
  belongs_to :user
  has_many :meetings
end
