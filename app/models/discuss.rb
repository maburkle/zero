class Discuss < ActiveRecord::Base
	belongs_to :topic, touch: true
	has_many :posts 
	belongs_to :user
	extend FriendlyId
	friendly_id :title, use: [:scoped, :slugged], scope: :topic
end