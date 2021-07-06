class AddUseridToUsersRecords < ActiveRecord::Migration[6.1]
  def change
  	add_column:users_records,:userid,:int
  end
end
