class UsersRecord < ApplicationRecord
   belongs_to :user
  has_many :comments
  

  def full_name
    return "#{firstname} #{lastname}" 
  end

  def self.search(param)
    param.strip!
    to_send_back = (firstname_matches(param) + lastname_matches(param) + email_matches(param) + phone_number_matches(param)).uniq
    return nil unless to_send_back
    to_send_back
  end

  def self.first_name_matches(param)
    matches('first_name', param)
  end

  def self.last_name_matches(param)
    matches('last_name', param)
  end

  def self.email_matches(param)
    matches('email', param)
  end
   def self.phone_number_matches(param)
    matches('phone_number', param)
  end

  def self.matches(field_name, param)
    where("#{field_name} like ?", "%#{param}%")
  end

end
