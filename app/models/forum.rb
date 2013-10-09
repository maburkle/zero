class Forum < ActiveRecord::Base
	has_many :subjects
	extend FriendlyId
	friendly_id :title, use: :slugged
end
