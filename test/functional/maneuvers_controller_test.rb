require 'test_helper'

class ManeuversControllerTest < ActionController::TestCase
  setup do
    @maneuver = maneuvers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maneuvers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maneuver" do
    assert_difference('Maneuver.count') do
      post :create, maneuver: { character_id: @maneuver.character_id, description: @maneuver.description, effect: @maneuver.effect, title: @maneuver.title }
    end

    assert_redirected_to maneuver_path(assigns(:maneuver))
  end

  test "should show maneuver" do
    get :show, id: @maneuver
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maneuver
    assert_response :success
  end

  test "should update maneuver" do
    put :update, id: @maneuver, maneuver: { character_id: @maneuver.character_id, description: @maneuver.description, effect: @maneuver.effect, title: @maneuver.title }
    assert_redirected_to maneuver_path(assigns(:maneuver))
  end

  test "should destroy maneuver" do
    assert_difference('Maneuver.count', -1) do
      delete :destroy, id: @maneuver
    end

    assert_redirected_to maneuvers_path
  end
end
