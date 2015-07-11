class Frontend::FrontendHomeController < ApplicationController 
	layout "frontend/layout"

	def index 
		@banner = Banner.find_by(banner_type: Banner.banner_types[:home])
		@product_sections = ProductSection.all
		render "frontend/frontend_home.html.erb"
	end
end