class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]

  def whoops
    render :new
    flash[:notice] = "There was a problem saving this meeting."
  end

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Event.new(event_params)
    if @meeting.save
      redirect_to meeting_path
      flash[:notice] = "You've created a new meeting!"
    else
      whoops
    end
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

  private

  def set_meeting
    @meeting = Meeting.find(params[:id])
  end

  def meeting_params
    params.require(:meeting).permit(:exec_id, :location, :user_id, :start, :duration)
  end
end
