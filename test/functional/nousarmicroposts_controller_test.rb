require 'test_helper'

class NousarmicropostsControllerTest < ActionController::TestCase
  setup do
    @nousarmicropost = microposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:Nousarmicroposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nousarmicropost" do
    assert_difference('Nousarmicropost.count') do
      post :create, nousarmicropost: { content: @nousarmicropost.content, user_id: @nousarmicropost.user_id }
    end

    assert_redirected_to micropost_path(assigns(:nousarmicropost))
  end

  test "should show nousarmicropost" do
    get :show, id: @nousarmicropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nousarmicropost
    assert_response :success
  end

  test "should update nousarmicropost" do
    put :update, id: @nousarmicropost, nousarmicropost: { content: @nousarmicropost.content, user_id: @nousarmicropost.user_id }
    assert_redirected_to micropost_path(assigns(:nousarmicropost))
  end

  test "should destroy nousarmicropost" do
    assert_difference('Nousarmicropost.count', -1) do
      delete :destroy, id: @nousarmicropost
    end

    assert_redirected_to microposts_path
  end
end
