require "test_helper"

class HouseholdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @household = households(:one)
  end

  test "should get index" do
    get households_url, as: :json
    assert_response :success
  end

  test "should create household" do
    assert_difference('Household.count') do
      post households_url, params: { household: { day_id: @household.day_id, money: @household.money, month_id: @household.month_id, user_id: @household.user_id, year_id: @household.year_id } }, as: :json
    end

    assert_response 201
  end

  test "should show household" do
    get household_url(@household), as: :json
    assert_response :success
  end

  test "should update household" do
    patch household_url(@household), params: { household: { day_id: @household.day_id, money: @household.money, month_id: @household.month_id, user_id: @household.user_id, year_id: @household.year_id } }, as: :json
    assert_response 200
  end

  test "should destroy household" do
    assert_difference('Household.count', -1) do
      delete household_url(@household), as: :json
    end

    assert_response 204
  end
end
