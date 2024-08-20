require "application_system_test_case"

class DataAccessRequestsTest < ApplicationSystemTestCase
  setup do
    @data_access_request = data_access_requests(:one)
  end

  test "visiting the index" do
    visit data_access_requests_url
    assert_selector "h1", text: "Data access requests"
  end

  test "should create data access request" do
    visit data_access_requests_url
    click_on "New data access request"

    fill_in "Data type", with: @data_access_request.data_type
    fill_in "Developer", with: @data_access_request.developer_id
    fill_in "Requested at", with: @data_access_request.requested_at
    fill_in "Status", with: @data_access_request.status
    click_on "Create Data access request"

    assert_text "Data access request was successfully created"
    click_on "Back"
  end

  test "should update Data access request" do
    visit data_access_request_url(@data_access_request)
    click_on "Edit this data access request", match: :first

    fill_in "Data type", with: @data_access_request.data_type
    fill_in "Developer", with: @data_access_request.developer_id
    fill_in "Requested at", with: @data_access_request.requested_at
    fill_in "Status", with: @data_access_request.status
    click_on "Update Data access request"

    assert_text "Data access request was successfully updated"
    click_on "Back"
  end

  test "should destroy Data access request" do
    visit data_access_request_url(@data_access_request)
    click_on "Destroy this data access request", match: :first

    assert_text "Data access request was successfully destroyed"
  end
end
