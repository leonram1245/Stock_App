class AddPriceToBrokerStocks < ActiveRecord::Migration[6.1]
  def change
   add_column :broker_stocks, :price, :decimal
  end
end
