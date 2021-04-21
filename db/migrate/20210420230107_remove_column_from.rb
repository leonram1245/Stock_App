class RemoveColumnFrom < ActiveRecord::Migration[6.1]
  def change
    remove_column :stocks, :broker, :string
  end
end
