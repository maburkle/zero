class Post < ActiveRecord::Base
	belongs_to :discuss, touch: true
	belongs_to :user
    extend FriendlyId
	friendly_id :title, use: [:scoped, :slugged], scope: :discuss
end
