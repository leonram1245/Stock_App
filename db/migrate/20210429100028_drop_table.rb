class DropTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :broker_accounts
  end
end
