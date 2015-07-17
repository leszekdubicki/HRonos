require 'test_helper'

class EmploeesControllerTest < ActionController::TestCase
  setup do
    @emploee = emploees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emploees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emploee" do
    assert_difference('Emploee.count') do
      post :create, emploee: { department_id: @emploee.department_id, emploee_id: @emploee.emploee_id, first_name: @emploee.first_name, job_id: @emploee.job_id, last_name: @emploee.last_name, manager_id: @emploee.manager_id, salary: @emploee.salary, start_date: @emploee.start_date }
    end

    assert_redirected_to emploee_path(assigns(:emploee))
  end

  test "should show emploee" do
    get :show, id: @emploee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emploee
    assert_response :success
  end

  test "should update emploee" do
    patch :update, id: @emploee, emploee: { department_id: @emploee.department_id, emploee_id: @emploee.emploee_id, first_name: @emploee.first_name, job_id: @emploee.job_id, last_name: @emploee.last_name, manager_id: @emploee.manager_id, salary: @emploee.salary, start_date: @emploee.start_date }
    assert_redirected_to emploee_path(assigns(:emploee))
  end

  test "should destroy emploee" do
    assert_difference('Emploee.count', -1) do
      delete :destroy, id: @emploee
    end

    assert_redirected_to emploees_path
  end
end
