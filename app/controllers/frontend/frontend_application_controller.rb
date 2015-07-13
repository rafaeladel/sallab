class Frontend::FrontendApplicationController < ApplicationController

	layout "frontend/layout"

	before_action :set_nav

	def set_nav
		@about_sections = AboutSection.all
		@product_sections = ProductSection.all
 	end
end
