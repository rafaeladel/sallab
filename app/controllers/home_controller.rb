class HomeController < ApplicationController
	before_action :set_home

	# GET /admin/home
	def get_home_admin
	end

	# POST /admin/home
	def post_home_admin
		if @home.update(home_params)
			redirect_to get_home_admin_url
		else
			render "get_home_admin"
		end
	end

	private 
	def set_home 
		@home = Home.first
	end

	def home_params
		permitted = Home.globalize_attribute_names
		params[:home].permit(*permitted)
	end
end