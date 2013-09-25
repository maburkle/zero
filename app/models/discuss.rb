class Discuss < ActiveRecord::Base
	belongs_to :topic, touch: true
	has_many :posts 
end
