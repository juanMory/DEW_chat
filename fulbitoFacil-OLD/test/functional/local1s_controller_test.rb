require 'test_helper'

class Local1sControllerTest < ActionController::TestCase
  setup do
    @local1 = local1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:local1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create local1" do
    assert_difference('Local1.count') do
      post :create, local1: @local1.attributes
    end

    assert_redirected_to local1_path(assigns(:local1))
  end

  test "should show local1" do
    get :show, id: @local1.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @local1.to_param
    assert_response :success
  end

  test "should update local1" do
    put :update, id: @local1.to_param, local1: @local1.attributes
    assert_redirected_to local1_path(assigns(:local1))
  end

  test "should destroy local1" do
    assert_difference('Local1.count', -1) do
      delete :destroy, id: @local1.to_param
    end

    assert_redirected_to local1s_path
  end
end
