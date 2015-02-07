require 'test_helper'

class MattersControllerTest < ActionController::TestCase
  setup do
    @matter = matters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matter" do
    assert_difference('Matter.count') do
      post :create, matter: { cost: @matter.cost, expect_hours: @matter.expect_hours, fixed_fee: @matter.fixed_fee, lawfirm_id: @matter.lawfirm_id }
    end

    assert_redirected_to matter_path(assigns(:matter))
  end

  test "should show matter" do
    get :show, id: @matter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matter
    assert_response :success
  end

  test "should update matter" do
    patch :update, id: @matter, matter: { cost: @matter.cost, expect_hours: @matter.expect_hours, fixed_fee: @matter.fixed_fee, lawfirm_id: @matter.lawfirm_id }
    assert_redirected_to matter_path(assigns(:matter))
  end

  test "should destroy matter" do
    assert_difference('Matter.count', -1) do
      delete :destroy, id: @matter
    end

    assert_redirected_to matters_path
  end
end
