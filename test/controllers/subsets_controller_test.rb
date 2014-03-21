require 'test_helper'

class SubsetsControllerTest < ActionController::TestCase
  setup do
    @subset = subsets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subsets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subset" do
    assert_difference('Subset.count') do
      post :create, subset: { comment: @subset.comment, distance: @subset.distance, stroke_id: @subset.stroke_id, swimset_id: @subset.swimset_id }
    end

    assert_redirected_to subset_path(assigns(:subset))
  end

  test "should show subset" do
    get :show, id: @subset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subset
    assert_response :success
  end

  test "should update subset" do
    patch :update, id: @subset, subset: { comment: @subset.comment, distance: @subset.distance, stroke_id: @subset.stroke_id, swimset_id: @subset.swimset_id }
    assert_redirected_to subset_path(assigns(:subset))
  end

  test "should destroy subset" do
    assert_difference('Subset.count', -1) do
      delete :destroy, id: @subset
    end

    assert_redirected_to subsets_path
  end
end
