class Frontend::FrontendHomeController < Frontend::FrontendApplicationController 
	def index
		@page_info = get_page_info(:home)
		@banner = Banner.find_by(banner_type: Banner.banner_types[:home])
	end
end