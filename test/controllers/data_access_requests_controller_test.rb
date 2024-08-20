require "test_helper"

class DataAccessRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_access_request = data_access_requests(:one)
  end

  test "should get index" do
    get data_access_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_data_access_request_url
    assert_response :success
  end

  test "should create data_access_request" do
    assert_difference("DataAccessRequest.count") do
      post data_access_requests_url, params: { data_access_request: { data_type: @data_access_request.data_type, developer_id: @data_access_request.developer_id, requested_at: @data_access_request.requested_at, status: @data_access_request.status } }
    end

    assert_redirected_to data_access_request_url(DataAccessRequest.last)
  end

  test "should show data_access_request" do
    get data_access_request_url(@data_access_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_access_request_url(@data_access_request)
    assert_response :success
  end

  test "should update data_access_request" do
    patch data_access_request_url(@data_access_request), params: { data_access_request: { data_type: @data_access_request.data_type, developer_id: @data_access_request.developer_id, requested_at: @data_access_request.requested_at, status: @data_access_request.status } }
    assert_redirected_to data_access_request_url(@data_access_request)
  end

  test "should destroy data_access_request" do
    assert_difference("DataAccessRequest.count", -1) do
      delete data_access_request_url(@data_access_request)
    end

    assert_redirected_to data_access_requests_url
  end
end
