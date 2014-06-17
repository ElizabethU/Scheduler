class ExecsController < ApplicationController
  def new
  end

  def create
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
end
