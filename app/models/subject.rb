class Subject < ActiveRecord::Base
	belongs_to :forum
	has_many :topics
end
