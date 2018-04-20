require 'test_helper'

class ClientFeedbacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_feedback = client_feedbacks(:one)
  end

  test "should get index" do
    get client_feedbacks_url
    assert_response :success
  end

  test "should get new" do
    get new_client_feedback_url
    assert_response :success
  end

  test "should create client_feedback" do
    assert_difference('ClientFeedback.count') do
      post client_feedbacks_url, params: { client_feedback: { email: @client_feedback.email, message: @client_feedback.message, name: @client_feedback.name } }
    end

    assert_redirected_to client_feedback_url(ClientFeedback.last)
  end

  test "should show client_feedback" do
    get client_feedback_url(@client_feedback)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_feedback_url(@client_feedback)
    assert_response :success
  end

  test "should update client_feedback" do
    patch client_feedback_url(@client_feedback), params: { client_feedback: { email: @client_feedback.email, message: @client_feedback.message, name: @client_feedback.name } }
    assert_redirected_to client_feedback_url(@client_feedback)
  end

  test "should destroy client_feedback" do
    assert_difference('ClientFeedback.count', -1) do
      delete client_feedback_url(@client_feedback)
    end

    assert_redirected_to client_feedbacks_url
  end
end
