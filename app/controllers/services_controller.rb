class ServicesController < ApplicationController
  before_filter :authenticate

  def index
  end

  def new
    @service = Service.new
  end

  def show
    @services = Service.all
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])

    if @service.update(service_params)
      redirect_to @service
    else
      render 'edit'
    end
  end

  def create
    @service = Service.new(service_params)
    @service.save
    flash[:success] = "Service created!"
    redirect_to services_path
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to services_path
  end
end

private

def service_find
  @service = current_user.service.find(params[:id])
end

def service_params
  params.require(:service).permit(:service_name, :service_baseprice, :service_duetime, :service_notes)
end
