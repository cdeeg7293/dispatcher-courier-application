class JobsController < ApplicationController
  before_filter :authenticate
  def index
  end

  def new
    @job = Job.new
  end

  def show
    @jobs = Job.all
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])

    if @job.update(job_params)
      redirect_to @job
    else
      render 'edit'
    end
  end

  def create
    @job = Job.new(job_params)
    @job.save
    flash[:success] = "Account created!"
    redirect_to jobs_path
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to jobs_path
  end
end

private

def job_find
  @job = current_user.job.find(params[:id])
end

def job_params
  params.require(:job).permit(:job_client, :job_originaddress, :job_destinationaddress, :job_servicelevel, :job_orderplacer, :job_orderphone, :job_orderemail, :job_billingreference,
                              :job_datetime, :job_price, :job_oversize, :job_overweight, :job_waittime, :job_misc)
end
