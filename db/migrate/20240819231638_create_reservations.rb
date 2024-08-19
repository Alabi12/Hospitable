class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.references :guest, null: false, foreign_key: true
      t.references :table, null: false, foreign_key: true
      t.datetime :reservation_time
      t.text :special_requests

      t.timestamps
    end
  end
end
