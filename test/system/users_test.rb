require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    fill_in "Age ciphertext", with: @user.age_ciphertext
    fill_in "Dob ciphertext", with: @user.dob_ciphertext
    fill_in "Email ciphertext", with: @user.email_ciphertext
    fill_in "Latitude ciphertext", with: @user.latitude_ciphertext
    fill_in "Name ciphertext", with: @user.name_ciphertext
    fill_in "Suburb ciphertext", with: @user.suburb_ciphertext
    fill_in "Verified ciphertext", with: @user.verified_ciphertext
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    fill_in "Age ciphertext", with: @user.age_ciphertext
    fill_in "Dob ciphertext", with: @user.dob_ciphertext
    fill_in "Email ciphertext", with: @user.email_ciphertext
    fill_in "Latitude ciphertext", with: @user.latitude_ciphertext
    fill_in "Name ciphertext", with: @user.name_ciphertext
    fill_in "Suburb ciphertext", with: @user.suburb_ciphertext
    fill_in "Verified ciphertext", with: @user.verified_ciphertext
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
