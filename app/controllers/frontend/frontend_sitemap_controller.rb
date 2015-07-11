class Frontend::FrontendSitemapController < Frontend::FrontendApplicationController 
	def index 
		@banner = Banner.find_by(banner_type: Banner.banner_types[:home])
	end
end