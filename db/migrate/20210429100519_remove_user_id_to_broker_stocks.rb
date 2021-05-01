class RemoveUserIdToBrokerStocks < ActiveRecord::Migration[6.1]
  def change
    remove_column :broker_stocks, :user_id, :integer
  end
end
