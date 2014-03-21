require 'test_helper'

class VariencesControllerTest < ActionController::TestCase
  setup do
    @varience = variences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:variences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create varience" do
    assert_difference('Varience.count') do
      post :create, varience: { desc: @varience.desc, name: @varience.name }
    end

    assert_redirected_to varience_path(assigns(:varience))
  end

  test "should show varience" do
    get :show, id: @varience
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @varience
    assert_response :success
  end

  test "should update varience" do
    patch :update, id: @varience, varience: { desc: @varience.desc, name: @varience.name }
    assert_redirected_to varience_path(assigns(:varience))
  end

  test "should destroy varience" do
    assert_difference('Varience.count', -1) do
      delete :destroy, id: @varience
    end

    assert_redirected_to variences_path
  end
end
