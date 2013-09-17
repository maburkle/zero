class Topic < ActiveRecord::Base
	belongs_to :subject
	has_many :discusses
end
