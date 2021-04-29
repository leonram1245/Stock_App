class DropStaksTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :staks
  end
end
