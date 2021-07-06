require "test_helper"

class UsersRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_record = users_records(:one)
  end

  test "should get index" do
    get users_records_url
    assert_response :success
  end

  test "should get new" do
    get new_users_record_url
    assert_response :success
  end

  test "should create users_record" do
    assert_difference('UsersRecord.count') do
      post users_records_url, params: { users_record: { address: @users_record.address, email: @users_record.email, firstname: @users_record.firstname, lastname: @users_record.lastname, phone_number: @users_record.phone_number } }
    end

    assert_redirected_to users_record_url(UsersRecord.last)
  end

  test "should show users_record" do
    get users_record_url(@users_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_record_url(@users_record)
    assert_response :success
  end

  test "should update users_record" do
    patch users_record_url(@users_record), params: { users_record: { address: @users_record.address, email: @users_record.email, firstname: @users_record.firstname, lastname: @users_record.lastname, phone_number: @users_record.phone_number } }
    assert_redirected_to users_record_url(@users_record)
  end

  test "should destroy users_record" do
    assert_difference('UsersRecord.count', -1) do
      delete users_record_url(@users_record)
    end

    assert_redirected_to users_records_url
  end
end
