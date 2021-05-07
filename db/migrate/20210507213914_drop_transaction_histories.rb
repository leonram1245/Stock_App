class DropTransactionHistories < ActiveRecord::Migration[6.1]
  def change
    drop_table :transaction_histories
  end
end
