class BrokerTransactionsController < ApplicationController
  def index
    @broker_transactions = BrokerStock.broker_transactions
  end

  private
    def set_broker_stock
      @broker_stock = current_user.broker_stocks.find(params[:id])
    end

    def broker_stock_params
      params.require(:broker_transaction).permit(:price, :ticker, :company, :quantity, :amount, :user_id)
    end
end
