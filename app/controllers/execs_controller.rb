class ExecsController < ApplicationController
  def new
    @exec = Exec.new
  end

  def create
    @exec = Exec.new(exec_params)
    if @exec.save
      flash[:notice] = 'Exec was successfully created.'
      redirect_to execs_path
    else
      flash[:notice] = 'There was a problem registering this executive!'
      render :new
    end
  end

  def edit
  end

  def update
  end

  # shows executive's full schedule but only if an admin?
  def show
    @exec = Exec.find(params[:id])
    @meetings = @exec.meetings.available
    @scheduled = @exec.scheduled
  end

  # index should show all available meeting times by executive
  def index
    @execs = Exec.all
  end

  private
  def exec_params
    params.require(:exec).permit(:name, :email, :user_id)
  end
end
