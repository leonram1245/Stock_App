class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.float :price

      t.timestamps
    end
  end
end
