class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :room, null: false, foreign_key: true
      t.references :guest, null: false, foreign_key: true
      t.datetime :check_in_date
      t.datetime :check_out_date
      t.string :status

      t.timestamps
    end
  end
end
