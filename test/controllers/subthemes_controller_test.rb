require 'test_helper'

class SubthemesControllerTest < ActionController::TestCase
  setup do
    @subtheme = subthemes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subthemes)
  end

  test "should create subtheme" do
    assert_difference('Subtheme.count') do
      post :create, subtheme: { title: "different title", theme_id: @subtheme.theme_id }
    end

    assert_response 201
  end

  test "should show subtheme" do
    get :show, id: @subtheme
    assert_response :success
  end

  test "should update subtheme" do
    put :update, id: @subtheme, subtheme: { title: @subtheme.title }
    assert_response 204
  end

  test "should destroy subtheme" do
    assert_difference('Subtheme.count', -1) do
      delete :destroy, id: @subtheme
    end

    assert_response 204
  end
end
