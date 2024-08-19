class CreateStaffSchedules < ActiveRecord::Migration[7.1]
  def change
    create_table :staff_schedules do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :shift_start
      t.datetime :shift_end
      t.string :role

      t.timestamps
    end
  end
end
