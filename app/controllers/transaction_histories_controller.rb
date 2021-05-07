class TransactionHistoriesController < ApplicationController
  def index
    if current_user.has_role? :broker
      @brokers_stocks = BrokerStock.all
    elsif current_user.has_role? :buyer
      @buyers_stocks = BuyersStock.all
    end
  end

  private
    def set_transaction_history
      @trasanction_history = current_user.trnsaction_histories.find(params[:id])
    end

    def transaction_history_params
        params.require(:transaction_history).permit(:price, :stock, :status, :date, :quantity, :user_id)
    end
end
