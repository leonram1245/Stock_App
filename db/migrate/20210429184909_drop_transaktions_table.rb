class DropTransaktionsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :buyer_staks
  end
end
