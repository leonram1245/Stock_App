class RemoveColumnToBuyersStocks < ActiveRecord::Migration[6.1]
  def change
    remove_column :transactions, :buyersStock_id, :integer

  end
end
