require 'test_helper'

class ThemesControllerTest < ActionController::TestCase
  setup do
    @theme = themes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:themes)
  end

  test "should create theme" do
    assert_difference('Theme.count') do
      post :create, theme: { description: @theme.description, title: "Test theme" }
    end

    assert_response 201
  end

  test "should show theme" do
    get :show, id: @theme
    assert_response :success
  end

  test "should update theme" do
    put :update, id: @theme, theme: { description: @theme.description, title: @theme.title }
    assert_response 204
  end

  test "should destroy theme" do
    assert_difference('Theme.count', -1) do
      delete :destroy, id: @theme
    end

    assert_response 204
  end
end
