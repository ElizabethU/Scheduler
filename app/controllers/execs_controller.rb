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

  def show
    @exec = Exec.find(params[:id])
  end

  def index
    @execs = Exec.all
  end

  private
  def exec_params
    params.require(:exec).permit(:name, :email, :user_id)
  end
end
