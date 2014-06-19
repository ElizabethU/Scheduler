class WelcomeController < ApplicationController
  def home
    @meetings = Meeting.available
    @execs = Exec.all
  end
end
