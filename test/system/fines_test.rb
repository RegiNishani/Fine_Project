require "application_system_test_case"

class FinesTest < ApplicationSystemTestCase
  setup do
    @fine = fines(:one)
  end

  test "visiting the index" do
    visit fines_url
    assert_selector "h1", text: "Fines"
  end

  test "creating a Fine" do
    visit fines_url
    click_on "New Fine"

    fill_in "Amount", with: @fine.amount
    fill_in "Payment status", with: @fine.payment_status
    fill_in "Penalty amount", with: @fine.penalty_amount
    fill_in "Place", with: @fine.place
    fill_in "Reason", with: @fine.reason
    fill_in "Time of issue", with: @fine.time_of_issue
    click_on "Create Fine"

    assert_text "Fine was successfully created"
    click_on "Back"
  end

  test "updating a Fine" do
    visit fines_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @fine.amount
    fill_in "Payment status", with: @fine.payment_status
    fill_in "Penalty amount", with: @fine.penalty_amount
    fill_in "Place", with: @fine.place
    fill_in "Reason", with: @fine.reason
    fill_in "Time of issue", with: @fine.time_of_issue
    click_on "Update Fine"

    assert_text "Fine was successfully updated"
    click_on "Back"
  end

  test "destroying a Fine" do
    visit fines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fine was successfully destroyed"
  end
end
