class HomeController < ApplicationController

	def index
		@newest_discusses = Discuss.order("updated_at DESC").limit(5)
	end
end