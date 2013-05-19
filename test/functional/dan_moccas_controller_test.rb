require 'test_helper'

class DanMoccasControllerTest < ActionController::TestCase
  setup do
    @dan_mocca = dan_moccas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dan_moccas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dan_mocca" do
    assert_difference('DanMocca.count') do
      post :create, dan_mocca: { content: @dan_mocca.content, user_id: @dan_mocca.user_id }
    end

    assert_redirected_to dan_mocca_path(assigns(:dan_mocca))
  end

  test "should show dan_mocca" do
    get :show, id: @dan_mocca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dan_mocca
    assert_response :success
  end

  test "should update dan_mocca" do
    put :update, id: @dan_mocca, dan_mocca: { content: @dan_mocca.content, user_id: @dan_mocca.user_id }
    assert_redirected_to dan_mocca_path(assigns(:dan_mocca))
  end

  test "should destroy dan_mocca" do
    assert_difference('DanMocca.count', -1) do
      delete :destroy, id: @dan_mocca
    end

    assert_redirected_to dan_moccas_path
  end
end
