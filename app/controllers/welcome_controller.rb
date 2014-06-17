class WelcomeController < ApplicationController
  def home
    @meetings = Meeting.all
  end
end
