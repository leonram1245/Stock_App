class RemoveColumnFromBrokerStocks < ActiveRecord::Migration[6.1]
  def change
    remove_column :broker_stocks, :price, :decimal
  end
end
