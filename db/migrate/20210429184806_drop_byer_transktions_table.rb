class DropByerTransktionsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :transaktions
  end
end
