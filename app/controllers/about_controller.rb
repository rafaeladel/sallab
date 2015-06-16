class AboutController < ApplicationController
	before_action :set_about

	# GET /admin/about
	def get_about_admin
	end

	# POST /admin/about
	def post_about_admin
		if @about.update(about_params)
			redirect_to get_about_admin_url
		else
			render "get_about_admin"
		end
	end

	private 
	def set_about
		@about = About.first
	end

	def about_params
		permitted = About.globalize_attribute_names
		params[:about].permit(*permitted)
	end
end