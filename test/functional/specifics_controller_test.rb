require 'test_helper'

class SpecificsControllerTest < ActionController::TestCase
  setup do
    @specific = specifics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specifics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create specific" do
    assert_difference('Specific.count') do
      post :create, specific: @specific.attributes
    end

    assert_redirected_to specific_path(assigns(:specific))
  end

  test "should show specific" do
    get :show, id: @specific
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @specific
    assert_response :success
  end

  test "should update specific" do
    put :update, id: @specific, specific: @specific.attributes
    assert_redirected_to specific_path(assigns(:specific))
  end

  test "should destroy specific" do
    assert_difference('Specific.count', -1) do
      delete :destroy, id: @specific
    end

    assert_redirected_to specifics_path
  end
end
