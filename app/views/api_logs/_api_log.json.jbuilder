json.extract! api_log, :id, :api_key_id, :request_details, :response_time, :timestamp, :created_at, :updated_at
json.url api_log_url(api_log, format: :json)
