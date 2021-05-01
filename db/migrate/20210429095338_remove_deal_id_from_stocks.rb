class RemoveDealIdFromStocks < ActiveRecord::Migration[6.1]
  def change
    remove_column :stocks, :deal_id, :integer
  end
end
