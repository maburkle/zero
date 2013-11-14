class Discuss < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: [:scoped, :slugged], scope: :topic

	belongs_to :topic, touch: true
	has_many :posts 
	belongs_to :user
end