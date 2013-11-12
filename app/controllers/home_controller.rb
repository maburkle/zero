class HomeController < ApplicationController

	def index
		@newest_discusses = Discuss.all.order("updated_at DESC").limit(5)
	end

end