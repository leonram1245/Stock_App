class CreateTransactionHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :transaction_histories do |t|
      t.boolean :status
      t.date :date
      t.string :stock
      t.float :price
      t.integer :quantity
      t.integer :user_id
      t.timestamps
    end
  end
end
