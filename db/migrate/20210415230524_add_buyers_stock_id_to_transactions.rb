class AddBuyersStockIdToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :buyers_stock_id, :integer
  end
end
