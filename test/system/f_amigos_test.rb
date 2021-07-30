require "application_system_test_case"

class FAmigosTest < ApplicationSystemTestCase
  setup do
    @f_amigo = f_amigos(:one)
  end

  test "visiting the index" do
    visit f_amigos_url
    assert_selector "h1", text: "F Amigos"
  end

  test "creating a F amigo" do
    visit f_amigos_url
    click_on "New F Amigo"

    fill_in "Email", with: @f_amigo.email
    fill_in "First name", with: @f_amigo.first_name
    fill_in "Last name", with: @f_amigo.last_name
    fill_in "Phone", with: @f_amigo.phone
    fill_in "Twitter", with: @f_amigo.twitter
    click_on "Create F amigo"

    assert_text "F amigo was successfully created"
    click_on "Back"
  end

  test "updating a F amigo" do
    visit f_amigos_url
    click_on "Edit", match: :first

    fill_in "Email", with: @f_amigo.email
    fill_in "First name", with: @f_amigo.first_name
    fill_in "Last name", with: @f_amigo.last_name
    fill_in "Phone", with: @f_amigo.phone
    fill_in "Twitter", with: @f_amigo.twitter
    click_on "Update F amigo"

    assert_text "F amigo was successfully updated"
    click_on "Back"
  end

  test "destroying a F amigo" do
    visit f_amigos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "F amigo was successfully destroyed"
  end
end
