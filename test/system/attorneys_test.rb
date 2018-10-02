require "application_system_test_case"

class AttorneysTest < ApplicationSystemTestCase
  setup do
    @attorney = attorneys(:one)
  end

  test "visiting the index" do
    visit attorneys_url
    assert_selector "h1", text: "Attorneys"
  end

  test "creating a Attorney" do
    visit attorneys_url
    click_on "New Attorney"

    fill_in "Licence", with: @attorney.licence
    fill_in "Name", with: @attorney.name
    click_on "Create Attorney"

    assert_text "Attorney was successfully created"
    click_on "Back"
  end

  test "updating a Attorney" do
    visit attorneys_url
    click_on "Edit", match: :first

    fill_in "Licence", with: @attorney.licence
    fill_in "Name", with: @attorney.name
    click_on "Update Attorney"

    assert_text "Attorney was successfully updated"
    click_on "Back"
  end

  test "destroying a Attorney" do
    visit attorneys_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Attorney was successfully destroyed"
  end
end
