class Forum < ActiveRecord::Base
	has_many :subjects
	belongs_to :user
	extend FriendlyId
	friendly_id :title, use: :slugged
end
