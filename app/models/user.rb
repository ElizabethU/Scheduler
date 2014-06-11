class User < ActiveRecord::Base
  has_many :meetings
  has_many :execs
end
