class User < ApplicationRecord
	has_many :users_records

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         def full_name
         	return "#{firstname} #{lastname}" if firstname || lastname
         	"anonymous" 
end
end