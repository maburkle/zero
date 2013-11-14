class Subject < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: [:scoped, :slugged], scope: :forum
	
	belongs_to :forum, touch: true
	has_many :topics
	belongs_to :user
end
