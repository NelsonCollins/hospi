require 'test_helper'

class SearchedsControllerTest < ActionController::TestCase
  setup do
    @searched = searcheds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:searcheds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create searched" do
    assert_difference('Searched.count') do
      post :create, searched: { births: @searched.births, deaths: @searched.deaths, new: @searched.new, show: @searched.show, user_id: @searched.user_id }
    end

    assert_redirected_to searched_path(assigns(:searched))
  end

  test "should show searched" do
    get :show, id: @searched
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @searched
    assert_response :success
  end

  test "should update searched" do
    patch :update, id: @searched, searched: { births: @searched.births, deaths: @searched.deaths, new: @searched.new, show: @searched.show, user_id: @searched.user_id }
    assert_redirected_to searched_path(assigns(:searched))
  end

  test "should destroy searched" do
    assert_difference('Searched.count', -1) do
      delete :destroy, id: @searched
    end

    assert_redirected_to searcheds_path
  end
end
