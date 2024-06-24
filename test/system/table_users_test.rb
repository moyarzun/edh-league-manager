require "application_system_test_case"

class TableUsersTest < ApplicationSystemTestCase
  setup do
    @table_user = table_users(:one)
  end

  test "visiting the index" do
    visit table_users_url
    assert_selector "h1", text: "Table users"
  end

  test "should create table user" do
    visit table_users_url
    click_on "New table user"

    fill_in "Table", with: @table_user.table_id
    fill_in "User", with: @table_user.user_id
    click_on "Create Table user"

    assert_text "Table user was successfully created"
    click_on "Back"
  end

  test "should update Table user" do
    visit table_user_url(@table_user)
    click_on "Edit this table user", match: :first

    fill_in "Table", with: @table_user.table_id
    fill_in "User", with: @table_user.user_id
    click_on "Update Table user"

    assert_text "Table user was successfully updated"
    click_on "Back"
  end

  test "should destroy Table user" do
    visit table_user_url(@table_user)
    click_on "Destroy this table user", match: :first

    assert_text "Table user was successfully destroyed"
  end
end
