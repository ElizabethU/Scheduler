class Meeting < ActiveRecord::Base
  belongs_to :exec
  belongs_to :user
end
