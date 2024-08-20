require "application_system_test_case"

class LoyaltyProgramsTest < ApplicationSystemTestCase
  setup do
    @loyalty_program = loyalty_programs(:one)
  end

  test "visiting the index" do
    visit loyalty_programs_url
    assert_selector "h1", text: "Loyalty programs"
  end

  test "should create loyalty program" do
    visit loyalty_programs_url
    click_on "New loyalty program"

    fill_in "Guest", with: @loyalty_program.guest_id
    fill_in "Membership tier", with: @loyalty_program.membership_tier
    fill_in "Points balance", with: @loyalty_program.points_balance
    click_on "Create Loyalty program"

    assert_text "Loyalty program was successfully created"
    click_on "Back"
  end

  test "should update Loyalty program" do
    visit loyalty_program_url(@loyalty_program)
    click_on "Edit this loyalty program", match: :first

    fill_in "Guest", with: @loyalty_program.guest_id
    fill_in "Membership tier", with: @loyalty_program.membership_tier
    fill_in "Points balance", with: @loyalty_program.points_balance
    click_on "Update Loyalty program"

    assert_text "Loyalty program was successfully updated"
    click_on "Back"
  end

  test "should destroy Loyalty program" do
    visit loyalty_program_url(@loyalty_program)
    click_on "Destroy this loyalty program", match: :first

    assert_text "Loyalty program was successfully destroyed"
  end
end
