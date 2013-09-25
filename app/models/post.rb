class Post < ActiveRecord::Base
	belongs_to :discuss, touch: true
end
