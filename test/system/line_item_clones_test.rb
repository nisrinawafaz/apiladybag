require "application_system_test_case"

class LineItemClonesTest < ApplicationSystemTestCase
  setup do
    @line_item_clone = line_item_clones(:one)
  end

  test "visiting the index" do
    visit line_item_clones_url
    assert_selector "h1", text: "Line Item Clones"
  end

  test "creating a Line item clone" do
    visit line_item_clones_url
    click_on "New Line Item Clone"

    click_on "Create Line item clone"

    assert_text "Line item clone was successfully created"
    click_on "Back"
  end

  test "updating a Line item clone" do
    visit line_item_clones_url
    click_on "Edit", match: :first

    click_on "Update Line item clone"

    assert_text "Line item clone was successfully updated"
    click_on "Back"
  end

  test "destroying a Line item clone" do
    visit line_item_clones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Line item clone was successfully destroyed"
  end
end
