class BrokerTransactionsController < ApplicationController
  # before_action :set_broker_transaction, only: %i[ show edit update destroy ]
  # before_action :get_broker_stock
  
  def index
     @broker_transactions = BrokerTransaction.all
  end

  private
    # def get_broker_stock
    #   @broker_stock = current_user.broker_stocks.find(params[:broker_stock_id])
    # end

    # def set_broker_transaction
    #   @broker_transaction = @broker_stock.broker_transactions.find(params[:id])
    # end

    # def broker_stock_params
    #   params.require(:broker_transaction).permit(:price, :ticker, :company, :quantity, :amount, :user_id, :broker_stock_id)
    # end
end
