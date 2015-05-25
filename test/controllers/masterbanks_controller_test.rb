require 'test_helper'

class MasterbanksControllerTest < ActionController::TestCase
  setup do
    @masterbank = masterbanks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:masterbanks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create masterbank" do
    assert_difference('Masterbank.count') do
      post :create, masterbank: { description: @masterbank.description, image: @masterbank.image, name: @masterbank.name }
    end

    assert_redirected_to masterbank_path(assigns(:masterbank))
  end

  test "should show masterbank" do
    get :show, id: @masterbank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @masterbank
    assert_response :success
  end

  test "should update masterbank" do
    patch :update, id: @masterbank, masterbank: { description: @masterbank.description, image: @masterbank.image, name: @masterbank.name }
    assert_redirected_to masterbank_path(assigns(:masterbank))
  end

  test "should destroy masterbank" do
    assert_difference('Masterbank.count', -1) do
      delete :destroy, id: @masterbank
    end

    assert_redirected_to masterbanks_path
  end
end
