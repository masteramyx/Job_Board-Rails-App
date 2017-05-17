class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.create(job_params)
    # if job is saved, redirect to index page w/ saved job
    if @job.save
      redirect_to jobs_path
    else
    # else render new 'new job page' w/ error message displayed via rendered 'form'
      render 'new'
  end
  end

  # edit - sets @job(instance) to the Job found by ID parameter
  # *** localhost:3000/jobs/id/edit *** --> URL
  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update_attributes(job_params)
    redirect_to jobs_path
  end

  def destroy
    @job = Job.find(params[:id])
    @job.delete
    redirect_to jobs_path
  end

  def show
    @job = Job.find(params[:id])
  end
  private
  def job_params
    params.require(:job).permit(:title, :description, :salary)
  end
end
