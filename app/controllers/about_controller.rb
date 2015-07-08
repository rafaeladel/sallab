class AboutController < ApplicationController
	before_action :set_about, :set_page_info

	# GET /admin/about
	def get_about_admin
	end

	# POST /admin/about
	def post_about_admin
		if @about.update(about_params)
			flash[:notice] = "Saved!"
			redirect_to get_about_admin_url
		else
			render "get_about_admin"
		end
	end

	def post_page_info
		if @page_info.update(page_info_params)
			flash[:notice] = "Saved!"
			redirect_to :back
		else
			render "get_about_admin"
		end
	end

	private 
	def set_about
		@about = About.first
	end

	def set_page_info
		@page_info = PageInfo.find_by(info_type: PageInfo.info_types[:about])
	end


	def about_params
		params[:about]
	end

	def page_info_params
		permitted = PageInfo.globalize_attribute_names
		params[:page_info].permit(*permitted)
	end
end