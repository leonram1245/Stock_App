class BuyersTransactionsController < ApplicationController
  def index
    @buyers_transactions = BuyersTransaction.all
  end
end
