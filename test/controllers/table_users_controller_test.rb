require "test_helper"

class TableUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @table_user = table_users(:one)
  end

  test "should get index" do
    get table_users_url
    assert_response :success
  end

  test "should get new" do
    get new_table_user_url
    assert_response :success
  end

  test "should create table_user" do
    assert_difference("TableUser.count") do
      post table_users_url, params: { table_user: { table_id: @table_user.table_id, user_id: @table_user.user_id } }
    end

    assert_redirected_to table_user_url(TableUser.last)
  end

  test "should show table_user" do
    get table_user_url(@table_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_table_user_url(@table_user)
    assert_response :success
  end

  test "should update table_user" do
    patch table_user_url(@table_user), params: { table_user: { table_id: @table_user.table_id, user_id: @table_user.user_id } }
    assert_redirected_to table_user_url(@table_user)
  end

  test "should destroy table_user" do
    assert_difference("TableUser.count", -1) do
      delete table_user_url(@table_user)
    end

    assert_redirected_to table_users_url
  end
end
