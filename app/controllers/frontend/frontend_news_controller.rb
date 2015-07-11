class Frontend::FrontendNewsController < Frontend::FrontendApplicationController 
	def index 
		@banner = Banner.find_by(banner_type: Banner.banner_types[:news])
	end
end