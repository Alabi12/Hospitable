class CreateCheckIns < ActiveRecord::Migration[7.1]
  def change
    create_table :check_ins do |t|
      t.references :guest, null: false, foreign_key: true
      t.datetime :check_in_time
      t.string :digital_key

      t.timestamps
    end
  end
end
