require 'test_helper'

class DisabilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disability = disabilities(:one)
  end

  test "should get index" do
    get disabilities_url
    assert_response :success
  end

  test "should get new" do
    get new_disability_url
    assert_response :success
  end

  test "should create disability" do
    assert_difference('Disability.count') do
      post disabilities_url, params: { disability: { description: @disability.description, name: @disability.name } }
    end

    assert_redirected_to disability_url(Disability.last)
  end

  test "should show disability" do
    get disability_url(@disability)
    assert_response :success
  end

  test "should get edit" do
    get edit_disability_url(@disability)
    assert_response :success
  end

  test "should update disability" do
    patch disability_url(@disability), params: { disability: { description: @disability.description, name: @disability.name } }
    assert_redirected_to disability_url(@disability)
  end

  test "should destroy disability" do
    assert_difference('Disability.count', -1) do
      delete disability_url(@disability)
    end

    assert_redirected_to disabilities_url
  end
end
