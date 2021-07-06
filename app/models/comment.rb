class Comment < ApplicationRecord
	belongs_to :users_record
	validates :add_comment, presence:true
end
