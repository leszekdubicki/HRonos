require 'test_helper'

class VacationRequestsControllerTest < ActionController::TestCase
  setup do
    @vacation_request = vacation_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vacation_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vacation_request" do
    assert_difference('VacationRequest.count') do
      post :create, vacation_request: { approved: @vacation_request.approved, comments: @vacation_request.comments, employee_id: @vacation_request.employee_id, end_date: @vacation_request.end_date, manager_comments: @vacation_request.manager_comments, start_date: @vacation_request.start_date }
    end

    assert_redirected_to vacation_request_path(assigns(:vacation_request))
  end

  test "should show vacation_request" do
    get :show, id: @vacation_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vacation_request
    assert_response :success
  end

  test "should update vacation_request" do
    patch :update, id: @vacation_request, vacation_request: { approved: @vacation_request.approved, comments: @vacation_request.comments, employee_id: @vacation_request.employee_id, end_date: @vacation_request.end_date, manager_comments: @vacation_request.manager_comments, start_date: @vacation_request.start_date }
    assert_redirected_to vacation_request_path(assigns(:vacation_request))
  end

  test "should destroy vacation_request" do
    assert_difference('VacationRequest.count', -1) do
      delete :destroy, id: @vacation_request
    end

    assert_redirected_to vacation_requests_path
  end
end
