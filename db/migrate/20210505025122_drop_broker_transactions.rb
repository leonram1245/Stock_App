class DropBrokerTransactions < ActiveRecord::Migration[6.1]
  def change
    drop_table :broker_transactions
  end
end
