require 'test_helper'

class StaffingsControllerTest < ActionController::TestCase
  setup do
    @staffing = staffings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staffings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staffing" do
    assert_difference('Staffing.count') do
      post :create, staffing: { cost_per_hour: @staffing.cost_per_hour, first_name: @staffing.first_name, last_name: @staffing.last_name, lawfirm_id: @staffing.lawfirm_id, matter_id: @staffing.matter_id, middle_name: @staffing.middle_name }
    end

    assert_redirected_to staffing_path(assigns(:staffing))
  end

  test "should show staffing" do
    get :show, id: @staffing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staffing
    assert_response :success
  end

  test "should update staffing" do
    patch :update, id: @staffing, staffing: { cost_per_hour: @staffing.cost_per_hour, first_name: @staffing.first_name, last_name: @staffing.last_name, lawfirm_id: @staffing.lawfirm_id, matter_id: @staffing.matter_id, middle_name: @staffing.middle_name }
    assert_redirected_to staffing_path(assigns(:staffing))
  end

  test "should destroy staffing" do
    assert_difference('Staffing.count', -1) do
      delete :destroy, id: @staffing
    end

    assert_redirected_to staffings_path
  end
end
