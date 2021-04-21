class AddColumnToStocks < ActiveRecord::Migration[6.1]
  add_column :stocks, :ticker, :string
  add_column :stocks, :company, :string
  add_column :stocks, :broker, :string
  def change
  end
end
