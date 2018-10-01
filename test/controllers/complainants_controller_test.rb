require 'test_helper'

class ComplainantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complainant = complainants(:one)
  end

  test "should get index" do
    get complainants_url
    assert_response :success
  end

  test "should get new" do
    get new_complainant_url
    assert_response :success
  end

  test "should create complainant" do
    assert_difference('Complainant.count') do
      post complainants_url, params: { complainant: { address: @complainant.address, birthdate: @complainant.birthdate, disability: @complainant.disability, gender: @complainant.gender, last_name: @complainant.last_name, migrant: @complainant.migrant, name: @complainant.name, nationality: @complainant.nationality } }
    end

    assert_redirected_to complainant_url(Complainant.last)
  end

  test "should show complainant" do
    get complainant_url(@complainant)
    assert_response :success
  end

  test "should get edit" do
    get edit_complainant_url(@complainant)
    assert_response :success
  end

  test "should update complainant" do
    patch complainant_url(@complainant), params: { complainant: { address: @complainant.address, birthdate: @complainant.birthdate, disability: @complainant.disability, gender: @complainant.gender, last_name: @complainant.last_name, migrant: @complainant.migrant, name: @complainant.name, nationality: @complainant.nationality } }
    assert_redirected_to complainant_url(@complainant)
  end

  test "should destroy complainant" do
    assert_difference('Complainant.count', -1) do
      delete complainant_url(@complainant)
    end

    assert_redirected_to complainants_url
  end
end
