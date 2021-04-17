class AddTransactionId < ActiveRecord::Migration[6.1]
  add_column :roles, :transaction_id, :integer
  def change
  end
end
