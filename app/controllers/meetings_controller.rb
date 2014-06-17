class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]

  # this is only for admins to create a slot for an exec. need before filter
  # to check if user is an admin?

  # need before filter to check for logged in user for 'reserve' action

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

  def reserve
    @meeting = Meeting.find(params[:meeting])
    @meeting.user_id = current_user.id
    exec = Exec.find(@meeting.exec_id)
    datetime = @meeting.start.getlocal.strftime("%l:%M %p %a on %d %b %Y")
    if @meeting.save
      flash[:notice] = "You are scheduled to meet with #{exec.name} on #{datetime}"
      redirect_to root_path
    else
      flash[:notice] = "There was a problem claiming this slot. Please try again!"
      render exec_path(exec)
    end
  end

  private

  def set_meeting

    @meeting = Meeting.find(params[:id])
  end

  def meeting_params
    params.require(:meeting).permit(:exec_id, :location, :user_id, :start, :duration)
  end
end
