require "application_system_test_case"

class StaffSchedulesTest < ApplicationSystemTestCase
  setup do
    @staff_schedule = staff_schedules(:one)
  end

  test "visiting the index" do
    visit staff_schedules_url
    assert_selector "h1", text: "Staff schedules"
  end

  test "should create staff schedule" do
    visit staff_schedules_url
    click_on "New staff schedule"

    fill_in "Role", with: @staff_schedule.role
    fill_in "Shift end", with: @staff_schedule.shift_end
    fill_in "Shift start", with: @staff_schedule.shift_start
    fill_in "User", with: @staff_schedule.user_id
    click_on "Create Staff schedule"

    assert_text "Staff schedule was successfully created"
    click_on "Back"
  end

  test "should update Staff schedule" do
    visit staff_schedule_url(@staff_schedule)
    click_on "Edit this staff schedule", match: :first

    fill_in "Role", with: @staff_schedule.role
    fill_in "Shift end", with: @staff_schedule.shift_end
    fill_in "Shift start", with: @staff_schedule.shift_start
    fill_in "User", with: @staff_schedule.user_id
    click_on "Update Staff schedule"

    assert_text "Staff schedule was successfully updated"
    click_on "Back"
  end

  test "should destroy Staff schedule" do
    visit staff_schedule_url(@staff_schedule)
    click_on "Destroy this staff schedule", match: :first

    assert_text "Staff schedule was successfully destroyed"
  end
end
