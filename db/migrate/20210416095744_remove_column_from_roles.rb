class RemoveColumnFromRoles < ActiveRecord::Migration[6.1]
  def change
    remove_column :roles, :transaction_id, :integer
  end
end
