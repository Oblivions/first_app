require 'test_helper'

class NoMicropostsControllerTest < ActionController::TestCase
  setup do
    @no_micropost = no_microposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:no_microposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create no_micropost" do
    assert_difference('NoMicropost.count') do
      post :create, no_micropost: { content: @no_micropost.content, user_id: @no_micropost.user_id }
    end

    assert_redirected_to no_micropost_path(assigns(:no_micropost))
  end

  test "should show no_micropost" do
    get :show, id: @no_micropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @no_micropost
    assert_response :success
  end

  test "should update no_micropost" do
    put :update, id: @no_micropost, no_micropost: { content: @no_micropost.content, user_id: @no_micropost.user_id }
    assert_redirected_to no_micropost_path(assigns(:no_micropost))
  end

  test "should destroy no_micropost" do
    assert_difference('NoMicropost.count', -1) do
      delete :destroy, id: @no_micropost
    end

    assert_redirected_to no_microposts_path
  end
end
