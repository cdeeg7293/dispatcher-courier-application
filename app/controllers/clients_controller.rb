class ClientsController < ApplicationController
  before_filter :authenticate
  def index
    @clients = Client.all
  end
  def new
    @client = Client.new
  end

  def show
    @clients = Client.all
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])

    if @client.update(client_params)
      redirect_to @client
    else
      render 'edit'
    end
  end

  def create
    @client = Client.new(client_params)
    @client.save
    flash[:success] = "Account created!"
    redirect_to clients_path
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path
  end
end

private

def client_find
  @client = current_user.client.find(params[:id])
end

def client_params
  params.require(:client).permit(:client_name, :client_streetaddress, :client_floor, :client_email, :client_phone, :client_specialinstructions)
end
