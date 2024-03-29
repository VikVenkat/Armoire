require 'test_helper'

class GarmentsControllerTest < ActionController::TestCase
  setup do
    @garment = garments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:garments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create garment" do
    assert_difference('Garment.count') do
      post :create, :garment => @garment.attributes
    end

    assert_redirected_to garment_path(assigns(:garment))
  end

  test "should show garment" do
    get :show, :id => @garment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @garment.to_param
    assert_response :success
  end

  test "should update garment" do
    put :update, :id => @garment.to_param, :garment => @garment.attributes
    assert_redirected_to garment_path(assigns(:garment))
  end

  test "should destroy garment" do
    assert_difference('Garment.count', -1) do
      delete :destroy, :id => @garment.to_param
    end

    assert_redirected_to garments_path
  end
end
