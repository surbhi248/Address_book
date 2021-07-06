class CreateUsersRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :users_records do |t|
      t.string :firstname
      t.string :lastname
      t.text :address
      t.text :phone_number
      t.string :email

      t.timestamps
    end
  end
end
