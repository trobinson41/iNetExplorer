require 'test_helper'

class OrganismsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organism = organisms(:one)
  end

  test "should get index" do
    get organisms_url
    assert_response :success
  end

  test "should get new" do
    get new_organism_url
    assert_response :success
  end

  test "should create organism" do
    assert_difference('Organism.count') do
      post organisms_url, params: { organism: { family: @organism.family, genus: @organism.genus, order: @organism.order, species: @organism.species } }
    end

    assert_redirected_to organism_url(Organism.last)
  end

  test "should show organism" do
    get organism_url(@organism)
    assert_response :success
  end

  test "should get edit" do
    get edit_organism_url(@organism)
    assert_response :success
  end

  test "should update organism" do
    patch organism_url(@organism), params: { organism: { family: @organism.family, genus: @organism.genus, order: @organism.order, species: @organism.species } }
    assert_redirected_to organism_url(@organism)
  end

  test "should destroy organism" do
    assert_difference('Organism.count', -1) do
      delete organism_url(@organism)
    end

    assert_redirected_to organisms_url
  end
end
