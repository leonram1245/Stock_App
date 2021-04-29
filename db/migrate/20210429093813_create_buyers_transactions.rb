class CreateBuyersTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :buyers_transactions do |t|
      t.integer :buyers_stock_id
      t.integer :quantity
      t.decimal :price
      t.decimal :total

      t.timestamps
    end
  end
end
