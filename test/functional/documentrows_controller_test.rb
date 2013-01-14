require 'test_helper'

class DocumentrowsControllerTest < ActionController::TestCase
  setup do
    @documentrow = documentrows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documentrows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create documentrow" do
    assert_difference('Documentrow.count') do
      post :create, documentrow: { description: @documentrow.description, number_of_package: @documentrow.number_of_package, volume: @documentrow.volume, weight: @documentrow.weight }
    end

    assert_redirected_to documentrow_path(assigns(:documentrow))
  end

  test "should show documentrow" do
    get :show, id: @documentrow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @documentrow
    assert_response :success
  end

  test "should update documentrow" do
    put :update, id: @documentrow, documentrow: { description: @documentrow.description, number_of_package: @documentrow.number_of_package, volume: @documentrow.volume, weight: @documentrow.weight }
    assert_redirected_to documentrow_path(assigns(:documentrow))
  end

  test "should destroy documentrow" do
    assert_difference('Documentrow.count', -1) do
      delete :destroy, id: @documentrow
    end

    assert_redirected_to documentrows_path
  end
end
