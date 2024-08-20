class CreateApiKeys < ActiveRecord::Migration[7.1]
  def change
    create_table :api_keys do |t|
      # t.references :developer, null: false, foreign_key: true
      t.string :api_key
      t.string :status

      t.timestamps
    end
  end
end
