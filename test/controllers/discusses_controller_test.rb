require 'test_helper'

class DiscussesControllerTest < ActionController::TestCase
  setup do
    @discuss = discusses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discusses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discuss" do
    assert_difference('Discuss.count') do
      post :create, discuss: { description: @discuss.description, title: @discuss.title, topic_id: @discuss.topic_id }
    end

    assert_redirected_to discuss_path(assigns(:discuss))
  end

  test "should show discuss" do
    get :show, id: @discuss
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @discuss
    assert_response :success
  end

  test "should update discuss" do
    patch :update, id: @discuss, discuss: { description: @discuss.description, title: @discuss.title, topic_id: @discuss.topic_id }
    assert_redirected_to discuss_path(assigns(:discuss))
  end

  test "should destroy discuss" do
    assert_difference('Discuss.count', -1) do
      delete :destroy, id: @discuss
    end

    assert_redirected_to discusses_path
  end
end
