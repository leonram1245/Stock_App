class CreateBrokerTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :broker_transactions do |t|
      t.integer :broker_stock_id
      t.integer :quantity
      t.decimal :price
      t.decimal :total

      t.timestamps
    end
  end
end
