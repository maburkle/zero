class Topic < ActiveRecord::Base
	belongs_to :subject, touch: true
	has_many :discusses
end
