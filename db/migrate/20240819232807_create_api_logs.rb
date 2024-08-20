class CreateApiLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :api_logs do |t|
      t.references :api_key, null: false, foreign_key: true
      t.json :request_details
      t.float :response_time
      t.datetime :timestamp

      t.timestamps
    end
  end
end
