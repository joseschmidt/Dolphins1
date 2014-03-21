require 'test_helper'

class SwimsetsControllerTest < ActionController::TestCase
  setup do
    @swimset = swimsets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:swimsets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create swimset" do
    assert_difference('Swimset.count') do
      post :create, swimset: { comment: @swimset.comment, distance: @swimset.distance, practice_id: @swimset.practice_id, qty: @swimset.qty, rest: @swimset.rest, rori: @swimset.rori }
    end

    assert_redirected_to swimset_path(assigns(:swimset))
  end

  test "should show swimset" do
    get :show, id: @swimset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @swimset
    assert_response :success
  end

  test "should update swimset" do
    patch :update, id: @swimset, swimset: { comment: @swimset.comment, distance: @swimset.distance, practice_id: @swimset.practice_id, qty: @swimset.qty, rest: @swimset.rest, rori: @swimset.rori }
    assert_redirected_to swimset_path(assigns(:swimset))
  end

  test "should destroy swimset" do
    assert_difference('Swimset.count', -1) do
      delete :destroy, id: @swimset
    end

    assert_redirected_to swimsets_path
  end
end
