class BuyersStocksController < ApplicationController
  before_action :set_buyers_stock, only: %i[ show ]
  
  def available_stocks
    @broker_stocks = BrokerStock.all
  end

  def index
    @buyers_stocks = current_user.buyers_stocks
  end

  def show
  end

  def new
    @buyers_stock = current_user.buyers_stocks.build
  end
<<<<<<< HEAD

=======
<<<<<<< HEAD
  def edit
  end
=======

>>>>>>> origin/eds-branch
>>>>>>> origin/beta
  def create
    @buyers_stock = current_user.buyers_stocks.build(buyers_stock_params)
    respond_to do |format|
      if @buyers_stock.save
        format.html { redirect_to @buyers_stock, notice: "Successfully bought Stock from Broker" }
        format.json { render :show, status: :created, location: @buyers_stock }
      else
        format.html { render :new }
        format.json { render json: @buyers_stock.errors, status: :unprocessable_entity }
      end
    end
  end
<<<<<<< HEAD

=======
<<<<<<< HEAD
  def update
    respond_to do |format|
      if @buyers_stock.update(buyers_stock_params)
        format.html { redirect_to @buyers_stock, notice: "Buyer's Stock succesfully updated!" }
        format.json { render :show, status: :ok, location: @buyers_stock }
      else
        format.html { render :edit }
        format.json { render json: @buyers_stock.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @buyers_stock.destroy
     respond_to do |format|
      format.html { redirect_to buyers_stock_path, notice: "Buyer's Stock successfully deleted!" }
      format.json { head :no_content }
    end
  end
=======

>>>>>>> origin/eds-branch
>>>>>>> origin/beta
  private
    def set_buyers_stock
      @buyers_stock = current_user.buyers_stocks.find(params[:id])
    end
    def buyers_stock_params
      params.require(:buyers_stock).permit(:price, :ticker, :company, :quantity, :user_id, :broker_stock_id)
    end
end