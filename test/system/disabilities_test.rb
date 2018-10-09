require "application_system_test_case"

class DisabilitiesTest < ApplicationSystemTestCase
  setup do
    @disability = disabilities(:one)
  end

  test "visiting the index" do
    visit disabilities_url
    assert_selector "h1", text: "Disabilities"
  end

  test "creating a Disability" do
    visit disabilities_url
    click_on "New Disability"

    fill_in "Description", with: @disability.description
    fill_in "Name", with: @disability.name
    click_on "Create Disability"

    assert_text "Disability was successfully created"
    click_on "Back"
  end

  test "updating a Disability" do
    visit disabilities_url
    click_on "Edit", match: :first

    fill_in "Description", with: @disability.description
    fill_in "Name", with: @disability.name
    click_on "Update Disability"

    assert_text "Disability was successfully updated"
    click_on "Back"
  end

  test "destroying a Disability" do
    visit disabilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Disability was successfully destroyed"
  end
end
