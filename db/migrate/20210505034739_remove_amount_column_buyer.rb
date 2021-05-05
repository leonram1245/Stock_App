class RemoveAmountColumnBuyer < ActiveRecord::Migration[6.1]
  def change
    remove_column :buyers_stocks, :amount
  end
end
