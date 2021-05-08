class BrokerStocksController < ApplicationController
  before_action :set_broker_stock, only: %i[ show ]
  load_and_authorize_resource 
  def index
    @broker_stocks = current_user.broker_stocks
    @client = IEX::Api::Client.new(
      publishable_token: 'pk_1b55e157dacb479593441868fac9f0de',
      endpoint: 'https://cloud.iexapis.com/v1'
    )
  end

  def show
  end

  def new

    @broker_stock = current_user.broker_stocks.build
    @client = IEX::Api::Client.new(
      publishable_token: 'pk_1b55e157dacb479593441868fac9f0de',
      endpoint: 'https://cloud.iexapis.com/v1'
    ) 
  end
  

  def create
    @broker_stock = current_user.broker_stocks.build(broker_stock_params)
    
    respond_to do |format|
      if @broker_stock.save
        format.html { redirect_to @broker_stock, notice: 'Successfully bought Stock!' }
        format.json { render :show, status: :created, location: @broker_stock }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @broker_stock.errors, status: :unprocessable_entity }
      end
    end
  end


  private

    def set_broker_stock
      @broker_stock = current_user.broker_stocks.find(params[:id])
    end

    def broker_stock_params
      params.require(:broker_stock).permit(:price, :ticker, :company, :quantity, :user_id)
    end
end