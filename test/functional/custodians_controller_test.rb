require 'test_helper'

class CustodiansControllerTest < ActionController::TestCase
  setup do
    @custodian = custodians(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custodians)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custodian" do
    assert_difference('Custodian.count') do
      post :create, custodian: @custodian.attributes
    end

    assert_redirected_to custodian_path(assigns(:custodian))
  end

  test "should show custodian" do
    get :show, id: @custodian.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @custodian.to_param
    assert_response :success
  end

  test "should update custodian" do
    put :update, id: @custodian.to_param, custodian: @custodian.attributes
    assert_redirected_to custodian_path(assigns(:custodian))
  end

  test "should destroy custodian" do
    assert_difference('Custodian.count', -1) do
      delete :destroy, id: @custodian.to_param
    end

    assert_redirected_to custodians_path
  end
end
