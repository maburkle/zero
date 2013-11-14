class Topic < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: [:scoped, :slugged], scope: :subject
	
	belongs_to :subject, touch: true
	has_many :discusses
	belongs_to :user
end
