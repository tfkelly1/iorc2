require 'test_helper'

class RecordStatusesControllerTest < ActionController::TestCase
  setup do
    @record_status = record_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:record_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create record_status" do
    assert_difference('RecordStatus.count') do
      post :create, record_status: @record_status.attributes
    end

    assert_redirected_to record_status_path(assigns(:record_status))
  end

  test "should show record_status" do
    get :show, id: @record_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @record_status
    assert_response :success
  end

  test "should update record_status" do
    put :update, id: @record_status, record_status: @record_status.attributes
    assert_redirected_to record_status_path(assigns(:record_status))
  end

  test "should destroy record_status" do
    assert_difference('RecordStatus.count', -1) do
      delete :destroy, id: @record_status
    end

    assert_redirected_to record_statuses_path
  end
end
