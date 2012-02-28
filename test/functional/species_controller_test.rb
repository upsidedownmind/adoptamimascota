require 'test_helper'

class SpeciesControllerTest < ActionController::TestCase
  setup do
    @species = species(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:species)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create species" do
    assert_difference('Specie.count') do
      post :create, species: @species.attributes
    end

    assert_redirected_to species_path(assigns(:species))
  end

  test "should show species" do
    get :show, id: @species
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @species
    assert_response :success
  end

  test "should update species" do
    put :update, id: @species, species: @species.attributes
    assert_redirected_to species_path(assigns(:species))
  end

  test "should destroy species" do
    assert_difference('Specie.count', -1) do
      delete :destroy, id: @species
    end

    assert_redirected_to species_path
  end
end
