class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :edit, :update, :delete]

  def dashboard
  end
  
  def index
    @stocks = Stock.all
  end

  def show
  end

  def new
    @stock = Stock.new
  end

  def edit
  end

  def create
    @stock = Stock.new(stock_params)

    respond_to do |format|
      if @stock.save
        format.html { redirect_to deal_stocks_path(:deal_id), notice: 'Stock successfully created!' }
        format.json { render :show, status: :created, location: @stock }
      else
        format.html { render.new }
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @stock.update(stock_params)
        format.html { redirect_to deal_stock_path(:dea_id), notice: 'Stock succesfully updated!' }
        format.json { render :show, status: :ok, location: @stock }
      else
        format.html { render :edit }
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @stock.destroy
    respond_to do |format|
      format.html { redirect_to deal_stocks_path(:deal_id), notice: 'Stock successfully destroyed!' }
      format.json { head :no_content }
    end
  end

  private

    def set_stock
      @stock = Stock.find(params[:id])
    end

    def stock_params
      params.require(:stock).permit(:price, :ticker, :company, :deal_id)
    end
end
