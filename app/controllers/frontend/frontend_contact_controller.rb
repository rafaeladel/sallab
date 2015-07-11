class Frontend::FrontendContactController < Frontend::FrontendApplicationController 
	def index 
		
	end

	def branches
		@banner = Banner.find_by(banner_type: Banner.banner_types[:contact])
	end

	def contact_us
		@banner = Banner.find_by(banner_type: Banner.banner_types[:contact])
	end
end