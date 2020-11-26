class RoutinesController < ApplicationController
  def new
    @routine = Routine.new
  end

  def create
    Routine.create(routine_params)
    redirect_to '/'
  end

  def destroy
    routine = Routine.find(params[:id])
    routine.destroy
    redirect_to '/'
  end

  def edit
    @routine = Routine.find(params[:id])
  end

  def update
    routine = Routine.find(params[:id])
    routine.update(routine_params)
    redirect_to '/'
  end

  def show
    @routine = Routine.find(params[:id])
  end

  private

  def routine_params
    params.require(:routine).permit(:task, :details)
  end
end
