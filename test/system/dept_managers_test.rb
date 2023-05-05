require "application_system_test_case"

class DeptManagersTest < ApplicationSystemTestCase
  setup do
    @dept_manager = dept_managers(:one)
  end

  test "visiting the index" do
    visit dept_managers_url
    assert_selector "h1", text: "Dept managers"
  end

  test "should create dept manager" do
    visit dept_managers_url
    click_on "New dept manager"

    fill_in "Dept no", with: @dept_manager.dept_no
    fill_in "Emp no", with: @dept_manager.emp_no
    fill_in "From date", with: @dept_manager.from_date
    fill_in "To date", with: @dept_manager.to_date
    click_on "Create Dept manager"

    assert_text "Dept manager was successfully created"
    click_on "Back"
  end

  test "should update Dept manager" do
    visit dept_manager_url(@dept_manager)
    click_on "Edit this dept manager", match: :first

    fill_in "Dept no", with: @dept_manager.dept_no
    fill_in "Emp no", with: @dept_manager.emp_no
    fill_in "From date", with: @dept_manager.from_date
    fill_in "To date", with: @dept_manager.to_date
    click_on "Update Dept manager"

    assert_text "Dept manager was successfully updated"
    click_on "Back"
  end

  test "should destroy Dept manager" do
    visit dept_manager_url(@dept_manager)
    click_on "Destroy this dept manager", match: :first

    assert_text "Dept manager was successfully destroyed"
  end
end
