class FeesController < ApplicationController
    before_filter :authenticate

    def index
    end

    def new
      @fee = Fee.new
    end

    def show
      @fee = Fee.all
    end

    def edit
      @fee = Fee.find(params[:id])
    end

    def update
      @fee = Fee.find(params[:id])

      if @fee.update(fee_params)
        redirect_to @fee
      else
        render 'edit'
      end
    end

    def create
      @fee = Fee.new(fee_params)
      @fee.save
      flash[:success] = "Service created!"
      redirect_to fees_path
    end

    def destroy
      @fee = Fee.find(params[:id])
      @fee.destroy
      redirect_to fees_path
    end
  end

  private

  def fee_find
    @fee = current_user.fee.find(params[:id])
  end

  def fee_params
    params.require(:fee).permit(:fee_name, :fee_price, :fee_category, :fee_notes)
  end
