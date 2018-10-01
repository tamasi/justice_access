require "application_system_test_case"

class InstittutionsTest < ApplicationSystemTestCase
  setup do
    @instittution = instittutions(:one)
  end

  test "visiting the index" do
    visit instittutions_url
    assert_selector "h1", text: "Instittutions"
  end

  test "creating a Instittution" do
    visit instittutions_url
    click_on "New Instittution"

    fill_in "Name", with: @instittution.name
    click_on "Create Instittution"

    assert_text "Instittution was successfully created"
    click_on "Back"
  end

  test "updating a Instittution" do
    visit instittutions_url
    click_on "Edit", match: :first

    fill_in "Name", with: @instittution.name
    click_on "Update Instittution"

    assert_text "Instittution was successfully updated"
    click_on "Back"
  end

  test "destroying a Instittution" do
    visit instittutions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Instittution was successfully destroyed"
  end
end
