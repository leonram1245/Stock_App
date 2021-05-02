class BrokerTransactionsController < ApplicationController
  def index
    @broker_transactions = BrokerTransaction.all
  end
end
