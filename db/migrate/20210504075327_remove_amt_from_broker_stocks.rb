class RemoveAmtFromBrokerStocks < ActiveRecord::Migration[6.1]
  def change
    remove_column :broker_stocks, :amount, :decimal
  end
end
