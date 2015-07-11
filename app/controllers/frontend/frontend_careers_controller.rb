class Frontend::FrontendCareersController < Frontend::FrontendApplicationController 
	def index 
		@banner = Banner.find_by(banner_type: Banner.banner_types[:careers])
	end
end