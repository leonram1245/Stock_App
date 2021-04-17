class RemoveRoleIdToTransactions < ActiveRecord::Migration[6.1]
  def change
    remove_column :transactions, :role_id, :integer
  end
end
