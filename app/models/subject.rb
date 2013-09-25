class Subject < ActiveRecord::Base
	belongs_to :forum, touch: true
	has_many :topics
end
