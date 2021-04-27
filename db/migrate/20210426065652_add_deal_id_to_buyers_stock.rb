class AddDealIdToBuyersStock < ActiveRecord::Migration[6.1]
  def change
    add_column :buyers_stocks, :deal_id, :integer
  end
end
