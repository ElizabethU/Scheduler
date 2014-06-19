class WelcomeController < ApplicationController
  def home
    @meetings = Meeting.available
  end
end
