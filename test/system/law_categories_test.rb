require "application_system_test_case"

class LawCategoriesTest < ApplicationSystemTestCase
  setup do
    @law_category = law_categories(:one)
  end

  test "visiting the index" do
    visit law_categories_url
    assert_selector "h1", text: "Law Categories"
  end

  test "creating a Law category" do
    visit law_categories_url
    click_on "New Law Category"

    fill_in "Name", with: @law_category.name
    click_on "Create Law category"

    assert_text "Law category was successfully created"
    click_on "Back"
  end

  test "updating a Law category" do
    visit law_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @law_category.name
    click_on "Update Law category"

    assert_text "Law category was successfully updated"
    click_on "Back"
  end

  test "destroying a Law category" do
    visit law_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Law category was successfully destroyed"
  end
end
