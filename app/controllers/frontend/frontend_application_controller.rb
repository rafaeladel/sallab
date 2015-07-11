class Frontend::ApplicationController < ApplicationController
	before_action :set_nav

	layout "frontend/layout"
	

	def set_nav
		@product_sections = ProductSection.all
 	end
end
