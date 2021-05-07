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

  private
    def set_buyers_stock
      @buyers_stock = current_user.buyers_stocks.find(params[:id])
    end
    def buyers_stock_params
      params.require(:buyers_stock).permit(:price, :ticker, :company, :quantity, :user_id, :broker_stock_id)
    end
end