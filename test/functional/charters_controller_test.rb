require 'test_helper'

class ChartersControllerTest < ActionController::TestCase
  setup do
    @charter = charters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:charters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create charter" do
    assert_difference('Charter.count') do
      post :create, :charter => @charter.attributes
    end

    assert_redirected_to charter_path(assigns(:charter))
  end

  test "should show charter" do
    get :show, :id => @charter.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @charter.to_param
    assert_response :success
  end

  test "should update charter" do
    put :update, :id => @charter.to_param, :charter => @charter.attributes
    assert_redirected_to charter_path(assigns(:charter))
  end

  test "should destroy charter" do
    assert_difference('Charter.count', -1) do
      delete :destroy, :id => @charter.to_param
    end

    assert_redirected_to charters_path
  end
end
