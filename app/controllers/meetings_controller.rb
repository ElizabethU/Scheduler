class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]

  # this is only for admins to create a slot for an exec. need before filter
  # to check if user is an admin?

  def new
    @meeting = Meeting.new
    @execs = current_user.execs.alphabetize_array if current_user
  end

  def create
    @meeting = Meeting.new(meeting_params)
    if @meeting.save
      redirect_to meeting_path(@meeting)
      flash[:notice] = "You've created a new meeting!"
    else
      flash[:notice] = "There was a problem saving this meeting."
      render :new
    end
  end

  def edit
  end

  def update
  end

  def index
    @meetings = Meeting.all
    render :partial => 'index'
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
