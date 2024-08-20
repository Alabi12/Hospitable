class CreateMenuItems < ActiveRecord::Migration[7.1]
  def change
    create_table :menu_items do |t|
      t.string :item_name
      t.text :description
      t.decimal :price
      t.integer :popularity_score

      t.timestamps
    end
  end
end
