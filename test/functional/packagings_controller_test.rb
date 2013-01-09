require 'test_helper'

class PackagingsControllerTest < ActionController::TestCase
  setup do
    @packaging = packagings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:packagings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create packaging" do
    assert_difference('Packaging.count') do
      post :create, packaging: { description: @packaging.description }
    end

    assert_redirected_to packaging_path(assigns(:packaging))
  end

  test "should show packaging" do
    get :show, id: @packaging
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @packaging
    assert_response :success
  end

  test "should update packaging" do
    put :update, id: @packaging, packaging: { description: @packaging.description }
    assert_redirected_to packaging_path(assigns(:packaging))
  end

  test "should destroy packaging" do
    assert_difference('Packaging.count', -1) do
      delete :destroy, id: @packaging
    end

    assert_redirected_to packagings_path
  end
end
