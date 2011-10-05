require 'test_helper'

class TFilesControllerTest < ActionController::TestCase
  setup do
    @t_file = t_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_file" do
    assert_difference('TFile.count') do
      post :create, t_file: @t_file.attributes
    end

    assert_redirected_to t_file_path(assigns(:t_file))
  end

  test "should show t_file" do
    get :show, id: @t_file.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_file.to_param
    assert_response :success
  end

  test "should update t_file" do
    put :update, id: @t_file.to_param, t_file: @t_file.attributes
    assert_redirected_to t_file_path(assigns(:t_file))
  end

  test "should destroy t_file" do
    assert_difference('TFile.count', -1) do
      delete :destroy, id: @t_file.to_param
    end

    assert_redirected_to t_files_path
  end
end
