require 'test_helper'

class NativesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @native = natives(:one)
  end

  test "should get index" do
    get natives_url
    assert_response :success
  end

  test "should get new" do
    get new_native_url
    assert_response :success
  end

  test "should create native" do
    assert_difference('Native.count') do
      post natives_url, params: { native: { locations_id: @native.locations_id, name: @native.name } }
    end

    assert_redirected_to native_url(Native.last)
  end

  test "should show native" do
    get native_url(@native)
    assert_response :success
  end

  test "should get edit" do
    get edit_native_url(@native)
    assert_response :success
  end

  test "should update native" do
    patch native_url(@native), params: { native: { locations_id: @native.locations_id, name: @native.name } }
    assert_redirected_to native_url(@native)
  end

  test "should destroy native" do
    assert_difference('Native.count', -1) do
      delete native_url(@native)
    end

    assert_redirected_to natives_url
  end
end
