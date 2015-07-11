class FrontendHome < ApplicationController 
	layout "frontend/layout"

	def index 
		@banner = Banner.find(banner_type: Banner.banner_types[:home])
		@product_sections = ProductSection.all
		render "frontend/frontend_home.html.erb"
	end
end