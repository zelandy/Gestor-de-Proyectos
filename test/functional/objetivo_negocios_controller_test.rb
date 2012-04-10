require 'test_helper'

class ObjetivoNegociosControllerTest < ActionController::TestCase
  setup do
    @objetivo_negocio = objetivo_negocios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:objetivo_negocios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create objetivo_negocio" do
    assert_difference('ObjetivoNegocio.count') do
      post :create, :objetivo_negocio => @objetivo_negocio.attributes
    end

    assert_redirected_to objetivo_negocio_path(assigns(:objetivo_negocio))
  end

  test "should show objetivo_negocio" do
    get :show, :id => @objetivo_negocio.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @objetivo_negocio.to_param
    assert_response :success
  end

  test "should update objetivo_negocio" do
    put :update, :id => @objetivo_negocio.to_param, :objetivo_negocio => @objetivo_negocio.attributes
    assert_redirected_to objetivo_negocio_path(assigns(:objetivo_negocio))
  end

  test "should destroy objetivo_negocio" do
    assert_difference('ObjetivoNegocio.count', -1) do
      delete :destroy, :id => @objetivo_negocio.to_param
    end

    assert_redirected_to objetivo_negocios_path
  end
end
