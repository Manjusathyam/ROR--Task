require "test_helper"

class DeptManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dept_manager = dept_managers(:one)
  end

  test "should get index" do
    get dept_managers_url
    assert_response :success
  end

  test "should get new" do
    get new_dept_manager_url
    assert_response :success
  end

  test "should create dept_manager" do
    assert_difference("DeptManager.count") do
      post dept_managers_url, params: { dept_manager: { dept_no: @dept_manager.dept_no, emp_no: @dept_manager.emp_no, from_date: @dept_manager.from_date, to_date: @dept_manager.to_date } }
    end

    assert_redirected_to dept_manager_url(DeptManager.last)
  end

  test "should show dept_manager" do
    get dept_manager_url(@dept_manager)
    assert_response :success
  end

  test "should get edit" do
    get edit_dept_manager_url(@dept_manager)
    assert_response :success
  end

  test "should update dept_manager" do
    patch dept_manager_url(@dept_manager), params: { dept_manager: { dept_no: @dept_manager.dept_no, emp_no: @dept_manager.emp_no, from_date: @dept_manager.from_date, to_date: @dept_manager.to_date } }
    assert_redirected_to dept_manager_url(@dept_manager)
  end

  test "should destroy dept_manager" do
    assert_difference("DeptManager.count", -1) do
      delete dept_manager_url(@dept_manager)
    end

    assert_redirected_to dept_managers_url
  end
end
