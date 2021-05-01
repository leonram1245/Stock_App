class RemoveDealIdFromBuyersStocks < ActiveRecord::Migration[6.1]
  def change
    remove_column :buyers_stocks, :deal_id, :integer
  end
end
