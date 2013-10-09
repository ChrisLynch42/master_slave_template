require 'test_helper'

class ClassAttributesControllerTest < ActionController::TestCase
  setup do
    @class_attribute = class_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_attribute" do
    assert_difference('ClassAttribute.count') do
      post :create, class_attribute: { character_id: @class_attribute.character_id, description: @class_attribute.description, level: @class_attribute.level, title: @class_attribute.title }
    end

    assert_redirected_to class_attribute_path(assigns(:class_attribute))
  end

  test "should show class_attribute" do
    get :show, id: @class_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_attribute
    assert_response :success
  end

  test "should update class_attribute" do
    put :update, id: @class_attribute, class_attribute: { character_id: @class_attribute.character_id, description: @class_attribute.description, level: @class_attribute.level, title: @class_attribute.title }
    assert_redirected_to class_attribute_path(assigns(:class_attribute))
  end

  test "should destroy class_attribute" do
    assert_difference('ClassAttribute.count', -1) do
      delete :destroy, id: @class_attribute
    end

    assert_redirected_to class_attributes_path
  end
end
