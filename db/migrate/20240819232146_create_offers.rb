class CreateOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :offers do |t|
      t.references :guest, null: false, foreign_key: true
      t.text :offer_details
      t.datetime :expiry_date

      t.timestamps
    end
  end
end
