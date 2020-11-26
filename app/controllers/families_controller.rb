class FamiliesController < ApplicationController
  def new
    @family = Family.new
  end

  def create
    Family.create(family_params)
    redirect_to '/'
  end

  def destroy
    family = Family.find(params[:id])
    family.destroy
    redirect_to '/'
  end

  def edit
    @family = Family.find(params[:id])
  end

  def update
    family = Family.find(params[:id])
    family.update(family_params)
    redirect_to '/'
  end

  def show
    @family = Family.find(params[:id])
  end

  private

  def family_params
    params.require(:family).permit(:task, :details)
  end
end
