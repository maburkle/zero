class Topic < ActiveRecord::Base
	belongs_to :subject, touch: true
	has_many :discusses
	extend FriendlyId
	friendly_id :title, use: [:scoped, :slugged], scope: :subject
end
