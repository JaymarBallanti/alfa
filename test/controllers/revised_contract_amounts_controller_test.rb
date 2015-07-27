require 'test_helper'

class RevisedContractAmountsControllerTest < ActionController::TestCase
  setup do
    @revised_contract_amount = revised_contract_amounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:revised_contract_amounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create revised_contract_amount" do
    assert_difference('RevisedContractAmount.count') do
      post :create, revised_contract_amount: { amount: @revised_contract_amount.amount }
    end

    assert_redirected_to revised_contract_amount_path(assigns(:revised_contract_amount))
  end

  test "should show revised_contract_amount" do
    get :show, id: @revised_contract_amount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @revised_contract_amount
    assert_response :success
  end

  test "should update revised_contract_amount" do
    patch :update, id: @revised_contract_amount, revised_contract_amount: { amount: @revised_contract_amount.amount }
    assert_redirected_to revised_contract_amount_path(assigns(:revised_contract_amount))
  end

  test "should destroy revised_contract_amount" do
    assert_difference('RevisedContractAmount.count', -1) do
      delete :destroy, id: @revised_contract_amount
    end

    assert_redirected_to revised_contract_amounts_path
  end
end
