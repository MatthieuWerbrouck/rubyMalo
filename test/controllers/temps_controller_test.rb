require "test_helper"

class TempsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp = temps(:one)
  end

  test "should get index" do
    get temps_url, as: :json
    assert_response :success
  end

  test "should create temp" do
    assert_difference("Temp.count") do
      post temps_url, params: { temp: { name: @temp.name } }, as: :json
    end

    assert_response :created
  end

  test "should show temp" do
    get temp_url(@temp), as: :json
    assert_response :success
  end

  test "should update temp" do
    patch temp_url(@temp), params: { temp: { name: @temp.name } }, as: :json
    assert_response :success
  end

  test "should destroy temp" do
    assert_difference("Temp.count", -1) do
      delete temp_url(@temp), as: :json
    end

    assert_response :no_content
  end
end
