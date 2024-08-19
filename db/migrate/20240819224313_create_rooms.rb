class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.string :room_number
      t.string :room_type
      t.string :status
      t.decimal :price

      t.timestamps
    end
  end
end
