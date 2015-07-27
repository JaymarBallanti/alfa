require 'test_helper'

class TimeExtensionsControllerTest < ActionController::TestCase
  setup do
    @time_extension = time_extensions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_extensions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_extension" do
    assert_difference('TimeExtension.count') do
      post :create, time_extension: { date: @time_extension.date }
    end

    assert_redirected_to time_extension_path(assigns(:time_extension))
  end

  test "should show time_extension" do
    get :show, id: @time_extension
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_extension
    assert_response :success
  end

  test "should update time_extension" do
    patch :update, id: @time_extension, time_extension: { date: @time_extension.date }
    assert_redirected_to time_extension_path(assigns(:time_extension))
  end

  test "should destroy time_extension" do
    assert_difference('TimeExtension.count', -1) do
      delete :destroy, id: @time_extension
    end

    assert_redirected_to time_extensions_path
  end
end
