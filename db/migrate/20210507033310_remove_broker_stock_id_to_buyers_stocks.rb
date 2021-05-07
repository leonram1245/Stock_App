class RemoveBrokerStockIdToBuyersStocks < ActiveRecord::Migration[6.1]
  def change
    remove_column :buyers_stocks, :broker_stock_id, :integer
  end
end
