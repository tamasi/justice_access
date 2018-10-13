require "application_system_test_case"

class NativesTest < ApplicationSystemTestCase
  setup do
    @native = natives(:one)
  end

  test "visiting the index" do
    visit natives_url
    assert_selector "h1", text: "Natives"
  end

  test "creating a Native" do
    visit natives_url
    click_on "New Native"

    fill_in "Locations", with: @native.locations_id
    fill_in "Name", with: @native.name
    click_on "Create Native"

    assert_text "Native was successfully created"
    click_on "Back"
  end

  test "updating a Native" do
    visit natives_url
    click_on "Edit", match: :first

    fill_in "Locations", with: @native.locations_id
    fill_in "Name", with: @native.name
    click_on "Update Native"

    assert_text "Native was successfully updated"
    click_on "Back"
  end

  test "destroying a Native" do
    visit natives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Native was successfully destroyed"
  end
end
