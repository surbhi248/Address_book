json.extract! users_record, :id, :firstname, :lastname, :address, :phone_number, :email, :created_at, :updated_at
json.url users_record_url(users_record, format: :json)
