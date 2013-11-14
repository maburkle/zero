class Post < ActiveRecord::Base

  extend FriendlyId
	friendly_id :title, use: [:scoped, :slugged], scope: :discuss
	
	belongs_to :discuss, touch: true
	belongs_to :user
end
