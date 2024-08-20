class CreateInventories < ActiveRecord::Migration[7.1]
  def change
    create_table :inventories do |t|
      t.string :item_name
      t.integer :quantity
      t.integer :reorder_level
      t.integer :supplier_id

      t.timestamps
    end
  end
end
