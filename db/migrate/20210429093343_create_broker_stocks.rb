class CreateBrokerStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :broker_stocks do |t|
      t.integer :user_id
      t.integer :stock_id

      t.timestamps
    end
  end
end
