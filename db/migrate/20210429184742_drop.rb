class Drop < ActiveRecord::Migration[6.1]
  def change
    drop_table :buyer_transktions
  end
end
