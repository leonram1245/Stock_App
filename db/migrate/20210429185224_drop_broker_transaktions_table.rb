class DropBrokerTransaktionsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :broker_transaktions
  end
end
