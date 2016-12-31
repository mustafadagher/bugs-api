require 'test_helper'

class BugsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bug = bugs(:one)
  end

  test "should get index" do
    get bugs_url, as: :json
    assert_response :success
  end

  test "should create bug" do
    assert_difference('Bug.count') do
      post bugs_url, params: { bug: { app_token: @bug.app_token, comment: @bug.comment, number: @bug.number, priority: @bug.priority, state_id: @bug.state_id, status: @bug.status } }, as: :json
    end

    assert_response 201
  end

  test "should show bug" do
    get bug_url(@bug), as: :json
    assert_response :success
  end

  test "should update bug" do
    patch bug_url(@bug), params: { bug: { app_token: @bug.app_token, comment: @bug.comment, number: @bug.number, priority: @bug.priority, state_id: @bug.state_id, status: @bug.status } }, as: :json
    assert_response 200
  end

  test "should destroy bug" do
    assert_difference('Bug.count', -1) do
      delete bug_url(@bug), as: :json
    end

    assert_response 204
  end
end
