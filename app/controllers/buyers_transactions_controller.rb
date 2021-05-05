class BuyersTransactionsController < ApplicationController
  before_action :set_buyers_transaction, only: %i[ show edit update destroy ]
  before_action :get_buyers_stock

  def index
    @buyers_transactions = @buyers_stock.buyers_transactions
  end

  private
    def get_buyer_stock
      @buyer_stock = current_user.buyers_stocks.find(params[:buyers_stock])
    end

    def set_broker_transaction
      @buyers_transaction = @broker.broker_transactions.find(params[:id])
    end

    def broker_stock_params
      params.require(:buyers_transaction).permit(:price, :ticker, :company, :quantity, :amount, :user_id)
    end
end
