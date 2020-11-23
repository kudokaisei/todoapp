class TasksController < ApplicationController
  def index
    @jobs = Job.all
    @families = Family.all
    @routines = Routine.all
    @others = Other.all
  end
end
