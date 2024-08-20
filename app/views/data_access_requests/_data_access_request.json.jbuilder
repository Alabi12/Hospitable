json.extract! data_access_request, :id, :developer_id, :data_type, :requested_at, :status, :created_at, :updated_at
json.url data_access_request_url(data_access_request, format: :json)
