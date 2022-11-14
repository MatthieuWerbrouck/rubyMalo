require "test_helper"

class ReponsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reponse = reponses(:one)
  end

  test "should get index" do
    get reponses_url, as: :json
    assert_response :success
  end

  test "should create reponse" do
    assert_difference("Reponse.count") do
      post reponses_url, params: { reponse: { lib: @reponse.lib, question_id: @reponse.question_id, user_id: @reponse.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show reponse" do
    get reponse_url(@reponse), as: :json
    assert_response :success
  end

  test "should update reponse" do
    patch reponse_url(@reponse), params: { reponse: { lib: @reponse.lib, question_id: @reponse.question_id, user_id: @reponse.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy reponse" do
    assert_difference("Reponse.count", -1) do
      delete reponse_url(@reponse), as: :json
    end

    assert_response :no_content
  end
end
