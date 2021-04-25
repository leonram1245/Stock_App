class BuyersStocksController < ApplicationController
  #before_action :set_buyers_stock, only: [:show :edit :update :destroy]

  def index
    @buyers_stocks = BuyersStock.all
  end

  def show
  end

  def new
    @buyers_stock = BuyersStock.new
  end

  def edit
  end

  def create
    @buyers_stock = BuyersStock.new(buyer_stock_params)

    respond_to do |format|
      if @buyers_stock.save
        format.html { redirect_to @buyers_stock, notice: "Buyer's Stock successfully created!" }
        format.json { render :show, status: :created, location: @buyers_stock }
      else
        format.html { render.new }
        format.json { render json: @buyers_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @buyers_stock.update(stock_params)
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

  private
    def set_buyers_stock
      @buyers_stock = BuyersStock.find(params[:id])
    end
end
  
