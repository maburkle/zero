class Event < ActiveRecord::Base

	extend FriendlyId
	friendly_id :title
	
	belongs_to :user
  has_many :rsvps
  has_many :users, through: :rsvps 
end
