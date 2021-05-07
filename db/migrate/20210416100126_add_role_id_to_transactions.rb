class AddRoleIdToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :role_id, :integer
  end
end
