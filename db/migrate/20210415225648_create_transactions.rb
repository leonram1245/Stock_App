class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.integer :buyersStock_id
      t.integer :stock_id

      t.timestamps
    end
  end
end
