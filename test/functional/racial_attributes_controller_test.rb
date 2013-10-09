require 'test_helper'

class RacialAttributesControllerTest < ActionController::TestCase
  setup do
    @racial_attribute = racial_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:racial_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create racial_attribute" do
    assert_difference('RacialAttribute.count') do
      post :create, racial_attribute: { character_id: @racial_attribute.character_id, description: @racial_attribute.description, title: @racial_attribute.title }
    end

    assert_redirected_to racial_attribute_path(assigns(:racial_attribute))
  end

  test "should show racial_attribute" do
    get :show, id: @racial_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @racial_attribute
    assert_response :success
  end

  test "should update racial_attribute" do
    put :update, id: @racial_attribute, racial_attribute: { character_id: @racial_attribute.character_id, description: @racial_attribute.description, title: @racial_attribute.title }
    assert_redirected_to racial_attribute_path(assigns(:racial_attribute))
  end

  test "should destroy racial_attribute" do
    assert_difference('RacialAttribute.count', -1) do
      delete :destroy, id: @racial_attribute
    end

    assert_redirected_to racial_attributes_path
  end
end
