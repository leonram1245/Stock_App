class AddColumnToBuyersStock < ActiveRecord::Migration[6.1]
  def change
    add_column :buyers_stocks, :ticker, :string
    add_column :buyers_stocks, :company, :string
    add_column :buyers_stocks, :quantity, :integer
    add_column :buyers_stocks, :amount, :float
end
end