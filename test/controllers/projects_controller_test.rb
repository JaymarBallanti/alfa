require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { contract_amount: @project.contract_amount, date_of_award: @project.date_of_award, date_of_contract: @project.date_of_contract, date_started: @project.date_started, implementing_office: @project.implementing_office, location: @project.location, project_duaration: @project.project_duaration, project_id_number: @project.project_id_number, project_name: @project.project_name, target_comletion: @project.target_comletion }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { contract_amount: @project.contract_amount, date_of_award: @project.date_of_award, date_of_contract: @project.date_of_contract, date_started: @project.date_started, implementing_office: @project.implementing_office, location: @project.location, project_duaration: @project.project_duaration, project_id_number: @project.project_id_number, project_name: @project.project_name, target_comletion: @project.target_comletion }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
