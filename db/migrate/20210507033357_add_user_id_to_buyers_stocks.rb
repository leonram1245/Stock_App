class AddUserIdToBuyersStocks < ActiveRecord::Migration[6.1]
  def change
    add_column :buyers_stocks, :user_id, :integer
  end
end
