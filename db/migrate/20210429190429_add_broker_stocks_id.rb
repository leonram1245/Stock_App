class AddBrokerStocksId < ActiveRecord::Migration[6.1]
  def change
    add_column :buyers_stocks, :broker_stock_id, :integer
  end
end
