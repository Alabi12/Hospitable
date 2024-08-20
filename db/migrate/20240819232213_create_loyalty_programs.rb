class CreateLoyaltyPrograms < ActiveRecord::Migration[7.1]
  def change
    create_table :loyalty_programs do |t|
      t.references :guest, null: false, foreign_key: true
      t.integer :points_balance
      t.string :membership_tier

      t.timestamps
    end
  end
end
