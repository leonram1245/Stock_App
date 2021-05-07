class AddTransactionIdToRoles < ActiveRecord::Migration[6.1]
  def change
    add_column :roles, :transaction_id, :integer
  end
end
