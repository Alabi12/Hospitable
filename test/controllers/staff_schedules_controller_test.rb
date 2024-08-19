require "test_helper"

class StaffSchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @staff_schedule = staff_schedules(:one)
  end

  test "should get index" do
    get staff_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_staff_schedule_url
    assert_response :success
  end

  test "should create staff_schedule" do
    assert_difference("StaffSchedule.count") do
      post staff_schedules_url, params: { staff_schedule: { role: @staff_schedule.role, shift_end: @staff_schedule.shift_end, shift_start: @staff_schedule.shift_start, user_id: @staff_schedule.user_id } }
    end

    assert_redirected_to staff_schedule_url(StaffSchedule.last)
  end

  test "should show staff_schedule" do
    get staff_schedule_url(@staff_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_staff_schedule_url(@staff_schedule)
    assert_response :success
  end

  test "should update staff_schedule" do
    patch staff_schedule_url(@staff_schedule), params: { staff_schedule: { role: @staff_schedule.role, shift_end: @staff_schedule.shift_end, shift_start: @staff_schedule.shift_start, user_id: @staff_schedule.user_id } }
    assert_redirected_to staff_schedule_url(@staff_schedule)
  end

  test "should destroy staff_schedule" do
    assert_difference("StaffSchedule.count", -1) do
      delete staff_schedule_url(@staff_schedule)
    end

    assert_redirected_to staff_schedules_url
  end
end
