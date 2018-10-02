require 'test_helper'

class AttorneysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attorney = attorneys(:one)
  end

  test "should get index" do
    get attorneys_url
    assert_response :success
  end

  test "should get new" do
    get new_attorney_url
    assert_response :success
  end

  test "should create attorney" do
    assert_difference('Attorney.count') do
      post attorneys_url, params: { attorney: { licence: @attorney.licence, name: @attorney.name } }
    end

    assert_redirected_to attorney_url(Attorney.last)
  end

  test "should show attorney" do
    get attorney_url(@attorney)
    assert_response :success
  end

  test "should get edit" do
    get edit_attorney_url(@attorney)
    assert_response :success
  end

  test "should update attorney" do
    patch attorney_url(@attorney), params: { attorney: { licence: @attorney.licence, name: @attorney.name } }
    assert_redirected_to attorney_url(@attorney)
  end

  test "should destroy attorney" do
    assert_difference('Attorney.count', -1) do
      delete attorney_url(@attorney)
    end

    assert_redirected_to attorneys_url
  end
end
