require 'test_helper'

class RegpublisControllerTest < ActionController::TestCase
  setup do
    @regpubli = regpublis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regpublis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regpubli" do
    assert_difference('Regpubli.count') do
      post :create, regpubli: @regpubli.attributes
    end

    assert_redirected_to regpubli_path(assigns(:regpubli))
  end

  test "should show regpubli" do
    get :show, id: @regpubli.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regpubli.to_param
    assert_response :success
  end

  test "should update regpubli" do
    put :update, id: @regpubli.to_param, regpubli: @regpubli.attributes
    assert_redirected_to regpubli_path(assigns(:regpubli))
  end

  test "should destroy regpubli" do
    assert_difference('Regpubli.count', -1) do
      delete :destroy, id: @regpubli.to_param
    end

    assert_redirected_to regpublis_path
  end
end
