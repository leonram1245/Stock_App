class RemoveAmountColumnBroker < ActiveRecord::Migration[6.1]
  def change
    remove_column :broker_stocks, :amount
  end
end
