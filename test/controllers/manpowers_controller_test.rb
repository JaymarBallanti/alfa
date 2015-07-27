require 'test_helper'

class ManpowersControllerTest < ActionController::TestCase
  setup do
    @manpower = manpowers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manpowers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manpower" do
    assert_difference('Manpower.count') do
      post :create, manpower: { materials_engineer: @manpower.materials_engineer, project_engineer: @manpower.project_engineer, project_foreman: @manpower.project_foreman }
    end

    assert_redirected_to manpower_path(assigns(:manpower))
  end

  test "should show manpower" do
    get :show, id: @manpower
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manpower
    assert_response :success
  end

  test "should update manpower" do
    patch :update, id: @manpower, manpower: { materials_engineer: @manpower.materials_engineer, project_engineer: @manpower.project_engineer, project_foreman: @manpower.project_foreman }
    assert_redirected_to manpower_path(assigns(:manpower))
  end

  test "should destroy manpower" do
    assert_difference('Manpower.count', -1) do
      delete :destroy, id: @manpower
    end

    assert_redirected_to manpowers_path
  end
end
