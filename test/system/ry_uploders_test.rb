require "application_system_test_case"

class RyUplodersTest < ApplicationSystemTestCase
  setup do
    @ry_uploder = ry_uploders(:one)
  end

  test "visiting the index" do
    visit ry_uploders_url
    assert_selector "h1", text: "Ry Uploders"
  end

  test "creating a Ry uploder" do
    visit ry_uploders_url
    click_on "New Ry Uploder"

    fill_in "Desc", with: @ry_uploder.desc
    fill_in "Title", with: @ry_uploder.title
    click_on "Create Ry uploder"

    assert_text "Ry uploder was successfully created"
    click_on "Back"
  end

  test "updating a Ry uploder" do
    visit ry_uploders_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @ry_uploder.desc
    fill_in "Title", with: @ry_uploder.title
    click_on "Update Ry uploder"

    assert_text "Ry uploder was successfully updated"
    click_on "Back"
  end

  test "destroying a Ry uploder" do
    visit ry_uploders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ry uploder was successfully destroyed"
  end
end
