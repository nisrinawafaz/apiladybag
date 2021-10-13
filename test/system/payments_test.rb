require "application_system_test_case"

class PaymentsTest < ApplicationSystemTestCase
  setup do
    @payment = payments(:one)
  end

  test "visiting the index" do
    visit payments_url
    assert_selector "h1", text: "Payments"
  end

  test "creating a Payment" do
    visit payments_url
    click_on "New Payment"

    fill_in "Address", with: @payment.address
    fill_in "Cart", with: @payment.cart_id
    fill_in "City", with: @payment.city
    fill_in "Country", with: @payment.country
    fill_in "District", with: @payment.district_id
    fill_in "Fullname", with: @payment.fullname
    fill_in "Id", with: @payment.id
    fill_in "Phone", with: @payment.phone
    fill_in "Status", with: @payment.status_id
    fill_in "Subtotal", with: @payment.subtotal
    fill_in "Total", with: @payment.total
    fill_in "User", with: @payment.user_id
    click_on "Create Payment"

    assert_text "Payment was successfully created"
    click_on "Back"
  end

  test "updating a Payment" do
    visit payments_url
    click_on "Edit", match: :first

    fill_in "Address", with: @payment.address
    fill_in "Cart", with: @payment.cart_id
    fill_in "City", with: @payment.city
    fill_in "Country", with: @payment.country
    fill_in "District", with: @payment.district_id
    fill_in "Fullname", with: @payment.fullname
    fill_in "Id", with: @payment.id
    fill_in "Phone", with: @payment.phone
    fill_in "Status", with: @payment.status_id
    fill_in "Subtotal", with: @payment.subtotal
    fill_in "Total", with: @payment.total
    fill_in "User", with: @payment.user_id
    click_on "Update Payment"

    assert_text "Payment was successfully updated"
    click_on "Back"
  end

  test "destroying a Payment" do
    visit payments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payment was successfully destroyed"
  end
end
