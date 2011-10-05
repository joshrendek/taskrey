require 'test_helper'

class AttachmentsControllerTest < ActionController::TestCase
  setup do
    @attachment = attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attachment" do
    assert_difference('Attachment.count') do
      post :create, attachment: @attachment.attributes
    end

    assert_redirected_to attachment_path(assigns(:attachment))
  end

  test "should show attachment" do
    get :show, id: @attachment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attachment.to_param
    assert_response :success
  end

  test "should update attachment" do
    put :update, id: @attachment.to_param, attachment: @attachment.attributes
    assert_redirected_to attachment_path(assigns(:attachment))
  end

  test "should destroy attachment" do
    assert_difference('Attachment.count', -1) do
      delete :destroy, id: @attachment.to_param
    end

    assert_redirected_to attachments_path
  end
end
