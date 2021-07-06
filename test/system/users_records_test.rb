require "application_system_test_case"

class UsersRecordsTest < ApplicationSystemTestCase
  setup do
    @users_record = users_records(:one)
  end

  test "visiting the index" do
    visit users_records_url
    assert_selector "h1", text: "Users Records"
  end

  test "creating a Users record" do
    visit users_records_url
    click_on "New Users Record"

    fill_in "Address", with: @users_record.address
    fill_in "Email", with: @users_record.email
    fill_in "Firstname", with: @users_record.firstname
    fill_in "Lastname", with: @users_record.lastname
    fill_in "Phone number", with: @users_record.phone_number
    click_on "Create Users record"

    assert_text "Users record was successfully created"
    click_on "Back"
  end

  test "updating a Users record" do
    visit users_records_url
    click_on "Edit", match: :first

    fill_in "Address", with: @users_record.address
    fill_in "Email", with: @users_record.email
    fill_in "Firstname", with: @users_record.firstname
    fill_in "Lastname", with: @users_record.lastname
    fill_in "Phone number", with: @users_record.phone_number
    click_on "Update Users record"

    assert_text "Users record was successfully updated"
    click_on "Back"
  end

  test "destroying a Users record" do
    visit users_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Users record was successfully destroyed"
  end
end
