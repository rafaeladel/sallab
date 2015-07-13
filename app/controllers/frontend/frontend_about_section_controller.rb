class Frontend::FrontendAboutSectionController < Frontend::FrontendApplicationController
	def index 
		@banner = Banner.find_by(banner_type: Banner.banner_types[:about])
		@about_section = AboutSection.find_by_slug(params[:slug])
	end
end