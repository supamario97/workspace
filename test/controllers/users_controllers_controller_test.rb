require 'test_helper'

class UsersControllersControllerTest < ActionController::TestCase
  setup do
    @users_controller = users_controllers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_controllers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_controller" do
    assert_difference('UsersController.count') do
      post :create, users_controller: {  }
    end

    assert_redirected_to users_controller_path(assigns(:users_controller))
  end

  test "should show users_controller" do
    get :show, id: @users_controller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_controller
    assert_response :success
  end

  test "should update users_controller" do
    patch :update, id: @users_controller, users_controller: {  }
    assert_redirected_to users_controller_path(assigns(:users_controller))
  end

  test "should destroy users_controller" do
    assert_difference('UsersController.count', -1) do
      delete :destroy, id: @users_controller
    end

    assert_redirected_to users_controllers_path
  end
end
