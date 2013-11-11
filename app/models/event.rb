class Event < ActiveRecord::Base
	belongs_to :user
  has_many :rsvps
  has_many :users, through: :rsvps 
	extend FriendlyId
	friendly_id :title
end
