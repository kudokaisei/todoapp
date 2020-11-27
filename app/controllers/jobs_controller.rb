class JobsController < ApplicationController
  def index
  end
    
  def new
    @job = Job.new
  end

  def create
    Job.create(job_params)
    redirect_to '/'
  end

  def destroy
    job = Job.find(params[:id])
    job.destroy
    redirect_to '/'
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    job = Job.find(params[:id])
    job.update(job_params)
    redirect_to '/'
  end

  def show
    @job = Job.find(params[:id])
  end

  private

  def job_params
    params.require(:job).permit(:task, :details)
  end
end
