class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
  	rename_column:users_records,:userid,:user_id
  end
end
