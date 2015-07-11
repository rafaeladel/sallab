class Frontend::FrontendHomeController < Frontend::ApplicationController 
	def index 
		@banner = Banner.find_by(banner_type: Banner.banner_types[:home])
	end
end