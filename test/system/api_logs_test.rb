require "application_system_test_case"

class ApiLogsTest < ApplicationSystemTestCase
  setup do
    @api_log = api_logs(:one)
  end

  test "visiting the index" do
    visit api_logs_url
    assert_selector "h1", text: "Api logs"
  end

  test "should create api log" do
    visit api_logs_url
    click_on "New api log"

    fill_in "Api key", with: @api_log.api_key_id
    fill_in "Request details", with: @api_log.request_details
    fill_in "Response time", with: @api_log.response_time
    fill_in "Timestamp", with: @api_log.timestamp
    click_on "Create Api log"

    assert_text "Api log was successfully created"
    click_on "Back"
  end

  test "should update Api log" do
    visit api_log_url(@api_log)
    click_on "Edit this api log", match: :first

    fill_in "Api key", with: @api_log.api_key_id
    fill_in "Request details", with: @api_log.request_details
    fill_in "Response time", with: @api_log.response_time
    fill_in "Timestamp", with: @api_log.timestamp
    click_on "Update Api log"

    assert_text "Api log was successfully updated"
    click_on "Back"
  end

  test "should destroy Api log" do
    visit api_log_url(@api_log)
    click_on "Destroy this api log", match: :first

    assert_text "Api log was successfully destroyed"
  end
end
