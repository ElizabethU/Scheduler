class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def index
    @meetings = Meeting.all
  end

  def show
  end

  def set_meeting
    @meeting = Meeting.find(params[:id])
  end
end
