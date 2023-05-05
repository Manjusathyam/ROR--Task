require "application_system_test_case"

class SalariesTest < ApplicationSystemTestCase
  setup do
    @salary = salaries(:one)
  end

  test "visiting the index" do
    visit salaries_url
    assert_selector "h1", text: "Salaries"
  end

  test "should create salary" do
    visit salaries_url
    click_on "New salary"

    fill_in "Emp no", with: @salary.emp_no
    fill_in "From date", with: @salary.from_date
    fill_in "Salary", with: @salary.salary
    fill_in "To date", with: @salary.to_date
    click_on "Create Salary"

    assert_text "Salary was successfully created"
    click_on "Back"
  end

  test "should update Salary" do
    visit salary_url(@salary)
    click_on "Edit this salary", match: :first

    fill_in "Emp no", with: @salary.emp_no
    fill_in "From date", with: @salary.from_date
    fill_in "Salary", with: @salary.salary
    fill_in "To date", with: @salary.to_date
    click_on "Update Salary"

    assert_text "Salary was successfully updated"
    click_on "Back"
  end

  test "should destroy Salary" do
    visit salary_url(@salary)
    click_on "Destroy this salary", match: :first

    assert_text "Salary was successfully destroyed"
  end
end
