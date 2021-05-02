class BrokerStocksController < ApplicationController
  before_action :set_broker_stock, only: %i[ show edit update destroy ]
  
  def index
    @broker_stocks = BrokerStock.all
    @client = IEX::Api::Client.new(
      publishable_token: 'Tpk_5a1173a0676d48fd8e83ac1798fd8669',
      endpoint: 'https://sandbox.iexapis.com/v1'
    )
  end

  def show
  end

  def new
    @broker_stock = BrokerStock.new
    @client = IEX::Api::Client.new(
      publishable_token: 'Tpk_5a1173a0676d48fd8e83ac1798fd8669',
      endpoint: 'https://sandbox.iexapis.com/v1'
    )
  end

  def edit
  end

  def create
    @broker_stock = BrokerStock.new(broker_stock_params)
    
    respond_to do |format|
      if @broker_stock.save
        format.html { redirect_to @broker_stock, notice: 'Stock successfully created!' }
        format.json { render :show, status: :created, location: @broker_stock }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @broker_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @broker_stock.update(broker_stock_params)
        format.html { redirect_to @broker_stock, notice: 'Stock succesfully updated!' }
        format.json { render :show, status: :ok, location: @broker_stock }
      else
        format.html { render :edit }
        format.json { render json: @broker_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @broker_stock.destroy
    respond_to do |format|
      format.html { redirect_to broker_stocks_path, notice: 'Stock successfully destroyed!' }
      format.json { head :no_content }
    end
  end

  private

    def set_broker_stock
      @broker_stock = BrokerStock.find(params[:id])
    end

    def broker_stock_params
      params.require(:broker_stock).permit(:price, :ticker, :company, :quantity, :amount, :user_id)
    end
end
