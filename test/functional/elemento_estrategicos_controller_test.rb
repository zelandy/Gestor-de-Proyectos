require 'test_helper'

class ElementoEstrategicosControllerTest < ActionController::TestCase
  setup do
    @elemento_estrategico = elemento_estrategicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:elemento_estrategicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create elemento_estrategico" do
    assert_difference('ElementoEstrategico.count') do
      post :create, :elemento_estrategico => @elemento_estrategico.attributes
    end

    assert_redirected_to elemento_estrategico_path(assigns(:elemento_estrategico))
  end

  test "should show elemento_estrategico" do
    get :show, :id => @elemento_estrategico.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @elemento_estrategico.to_param
    assert_response :success
  end

  test "should update elemento_estrategico" do
    put :update, :id => @elemento_estrategico.to_param, :elemento_estrategico => @elemento_estrategico.attributes
    assert_redirected_to elemento_estrategico_path(assigns(:elemento_estrategico))
  end

  test "should destroy elemento_estrategico" do
    assert_difference('ElementoEstrategico.count', -1) do
      delete :destroy, :id => @elemento_estrategico.to_param
    end

    assert_redirected_to elemento_estrategicos_path
  end
end
