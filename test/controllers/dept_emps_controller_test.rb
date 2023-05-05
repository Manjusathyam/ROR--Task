require "test_helper"

class DeptEmpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dept_emp = dept_emps(:one)
  end

  test "should get index" do
    get dept_emps_url
    assert_response :success
  end

  test "should get new" do
    get new_dept_emp_url
    assert_response :success
  end

  test "should create dept_emp" do
    assert_difference("DeptEmp.count") do
      post dept_emps_url, params: { dept_emp: { dept_no: @dept_emp.dept_no, emp_no: @dept_emp.emp_no, from_date: @dept_emp.from_date, to_date: @dept_emp.to_date } }
    end

    assert_redirected_to dept_emp_url(DeptEmp.last)
  end

  test "should show dept_emp" do
    get dept_emp_url(@dept_emp)
    assert_response :success
  end

  test "should get edit" do
    get edit_dept_emp_url(@dept_emp)
    assert_response :success
  end

  test "should update dept_emp" do
    patch dept_emp_url(@dept_emp), params: { dept_emp: { dept_no: @dept_emp.dept_no, emp_no: @dept_emp.emp_no, from_date: @dept_emp.from_date, to_date: @dept_emp.to_date } }
    assert_redirected_to dept_emp_url(@dept_emp)
  end

  test "should destroy dept_emp" do
    assert_difference("DeptEmp.count", -1) do
      delete dept_emp_url(@dept_emp)
    end

    assert_redirected_to dept_emps_url
  end
end
