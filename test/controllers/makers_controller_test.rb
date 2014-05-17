require 'test_helper'

class MakersControllerTest < ActionController::TestCase
  setup do
    @maker = makers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:makers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maker" do
    assert_difference('Maker.count') do
      post :create, maker: { bio: @maker.bio, location: @maker.location, name: @maker.name, skills: @maker.skills, space: @maker.space, tools: @maker.tools }
    end

    assert_redirected_to maker_path(assigns(:maker))
  end

  test "should show maker" do
    get :show, id: @maker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maker
    assert_response :success
  end

  test "should update maker" do
    patch :update, id: @maker, maker: { bio: @maker.bio, location: @maker.location, name: @maker.name, skills: @maker.skills, space: @maker.space, tools: @maker.tools }
    assert_redirected_to maker_path(assigns(:maker))
  end

  test "should destroy maker" do
    assert_difference('Maker.count', -1) do
      delete :destroy, id: @maker
    end

    assert_redirected_to makers_path
  end
end
