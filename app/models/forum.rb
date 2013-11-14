class Forum < ActiveRecord::Base

	extend FriendlyId
	friendly_id :title, use: :slugged
	
	has_many :subjects
	belongs_to :user
end
