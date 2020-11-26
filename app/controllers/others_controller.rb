class OthersController < ApplicationController
  def new
    @other = Other.new
  end

  def create
    Other.create(other_params)
    redirect_to '/'
  end

  def destroy
    other = Other.find(params[:id])
    other.destroy
    redirect_to '/'
  end

  def edit
    @other = Other.find(params[:id])
  end

  def update
    other = Other.find(params[:id])
    other.update(other_params)
    redirect_to '/'
  end

  def show
    @other = Other.find(params[:id])
  end

  private

  def other_params
    params.require(:other).permit(:task, :details)
  end
end
