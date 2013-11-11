class Topic < ActiveRecord::Base
	belongs_to :subject, touch: true
	has_many :discusses
	belongs_to :user
	extend FriendlyId
	friendly_id :title, use: [:scoped, :slugged], scope: :subject
end
