class Subject < ActiveRecord::Base
	belongs_to :forum, touch: true
	has_many :topics
	belongs_to :user
	extend FriendlyId
	friendly_id :title, use: [:scoped, :slugged], scope: :forum
end
