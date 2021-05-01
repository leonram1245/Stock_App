class RemoveStockIdToBrokerStocks < ActiveRecord::Migration[6.1]
  def change
    remove_column :broker_stocks, :stock_id, :integer
  end
end
