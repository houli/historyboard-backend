require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    @comment = comments(:one)
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, comment: { body: @comment.body, post_id: @comment.post_id }
    end

    assert_response 201
  end

  test "should update comment" do
    put :update, id: @comment, comment: { body: @comment.body, post_id: @comment.post_id }
    assert_response 204
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete :destroy, id: @comment
    end

    assert_response 204
  end
end
