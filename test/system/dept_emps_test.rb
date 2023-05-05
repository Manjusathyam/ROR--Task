require "application_system_test_case"

class DeptEmpsTest < ApplicationSystemTestCase
  setup do
    @dept_emp = dept_emps(:one)
  end

  test "visiting the index" do
    visit dept_emps_url
    assert_selector "h1", text: "Dept emps"
  end

  test "should create dept emp" do
    visit dept_emps_url
    click_on "New dept emp"

    fill_in "Dept no", with: @dept_emp.dept_no
    fill_in "Emp no", with: @dept_emp.emp_no
    fill_in "From date", with: @dept_emp.from_date
    fill_in "To date", with: @dept_emp.to_date
    click_on "Create Dept emp"

    assert_text "Dept emp was successfully created"
    click_on "Back"
  end

  test "should update Dept emp" do
    visit dept_emp_url(@dept_emp)
    click_on "Edit this dept emp", match: :first

    fill_in "Dept no", with: @dept_emp.dept_no
    fill_in "Emp no", with: @dept_emp.emp_no
    fill_in "From date", with: @dept_emp.from_date
    fill_in "To date", with: @dept_emp.to_date
    click_on "Update Dept emp"

    assert_text "Dept emp was successfully updated"
    click_on "Back"
  end

  test "should destroy Dept emp" do
    visit dept_emp_url(@dept_emp)
    click_on "Destroy this dept emp", match: :first

    assert_text "Dept emp was successfully destroyed"
  end
end
