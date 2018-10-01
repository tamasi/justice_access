require 'test_helper'

class InstittutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instittution = instittutions(:one)
  end

  test "should get index" do
    get instittutions_url
    assert_response :success
  end

  test "should get new" do
    get new_instittution_url
    assert_response :success
  end

  test "should create instittution" do
    assert_difference('Instittution.count') do
      post instittutions_url, params: { instittution: { name: @instittution.name } }
    end

    assert_redirected_to instittution_url(Instittution.last)
  end

  test "should show instittution" do
    get instittution_url(@instittution)
    assert_response :success
  end

  test "should get edit" do
    get edit_instittution_url(@instittution)
    assert_response :success
  end

  test "should update instittution" do
    patch instittution_url(@instittution), params: { instittution: { name: @instittution.name } }
    assert_redirected_to instittution_url(@instittution)
  end

  test "should destroy instittution" do
    assert_difference('Instittution.count', -1) do
      delete instittution_url(@instittution)
    end

    assert_redirected_to instittutions_url
  end
end
