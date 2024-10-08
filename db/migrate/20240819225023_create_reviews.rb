class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.references :guest, null: false, foreign_key: true
      t.text :review_text
      t.integer :rating
      t.string :sentiment

      t.timestamps
    end
  end
end
