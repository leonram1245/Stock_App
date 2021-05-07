class AddColumnsToBrokerStocks < ActiveRecord::Migration[6.1]
  def change
    add_column :broker_stocks, :quantity, :integer
    add_column :broker_stocks, :company, :string
    add_column :broker_stocks, :price, :decimal
    add_column :broker_stocks, :ticker, :string
    add_column :broker_stocks, :amount, :decimal
  end
end
