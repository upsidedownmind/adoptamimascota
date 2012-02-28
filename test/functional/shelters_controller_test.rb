require 'test_helper'

class SheltersControllerTest < ActionController::TestCase
  setup do
    @shelter = shelters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shelters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shelter" do
    assert_difference('Shelter.count') do
      post :create, shelter: @shelter.attributes
    end

    assert_redirected_to shelter_path(assigns(:shelter))
  end

  test "should show shelter" do
    get :show, id: @shelter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shelter
    assert_response :success
  end

  test "should update shelter" do
    put :update, id: @shelter, shelter: @shelter.attributes
    assert_redirected_to shelter_path(assigns(:shelter))
  end

  test "should destroy shelter" do
    assert_difference('Shelter.count', -1) do
      delete :destroy, id: @shelter
    end

    assert_redirected_to shelters_path
  end
end
