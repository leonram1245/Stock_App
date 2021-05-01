class AddUserIdToBrokerStocks < ActiveRecord::Migration[6.1]
  def change
    add_column :broker_stocks, :user_id, :integer
  end
end
