require 'test_helper'

class LawCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @law_category = law_categories(:one)
  end

  test "should get index" do
    get law_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_law_category_url
    assert_response :success
  end

  test "should create law_category" do
    assert_difference('LawCategory.count') do
      post law_categories_url, params: { law_category: { name: @law_category.name } }
    end

    assert_redirected_to law_category_url(LawCategory.last)
  end

  test "should show law_category" do
    get law_category_url(@law_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_law_category_url(@law_category)
    assert_response :success
  end

  test "should update law_category" do
    patch law_category_url(@law_category), params: { law_category: { name: @law_category.name } }
    assert_redirected_to law_category_url(@law_category)
  end

  test "should destroy law_category" do
    assert_difference('LawCategory.count', -1) do
      delete law_category_url(@law_category)
    end

    assert_redirected_to law_categories_url
  end
end
