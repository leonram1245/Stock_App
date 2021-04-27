class AddColumnToStock < ActiveRecord::Migration[6.1]
  def change
    add_column :stocks, :deal_id, :integer
  end
end
