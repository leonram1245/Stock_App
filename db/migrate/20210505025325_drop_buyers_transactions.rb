class DropBuyersTransactions < ActiveRecord::Migration[6.1]
  def change
    drop_table :buyers_transactions
  end
end
