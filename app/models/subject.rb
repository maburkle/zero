class Subject < ActiveRecord::Base
	belongs_to :forum, touch: true
	has_many :topics
	extend FriendlyId
	friendly_id :title, use: [:scoped, :slugged], scope: :forum
end
