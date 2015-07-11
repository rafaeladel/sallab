class Frontend::ApplicationController < ApplicationController
	before_action :set_nav

	def set_nav
		@product_sections = ProductSection.all
 	end
end
