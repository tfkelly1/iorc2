require 'test_helper'

class TaxonsControllerTest < ActionController::TestCase
  setup do
    @taxon = taxons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taxons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taxon" do
    assert_difference('Taxon.count') do
      post :create, taxon: @taxon.attributes
    end

    assert_redirected_to taxon_path(assigns(:taxon))
  end

  test "should show taxon" do
    get :show, id: @taxon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taxon
    assert_response :success
  end

  test "should update taxon" do
    put :update, id: @taxon, taxon: @taxon.attributes
    assert_redirected_to taxon_path(assigns(:taxon))
  end

  test "should destroy taxon" do
    assert_difference('Taxon.count', -1) do
      delete :destroy, id: @taxon
    end

    assert_redirected_to taxons_path
  end
end
