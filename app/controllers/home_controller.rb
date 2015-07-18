class HomeController < ApplicationController
	before_action :set_home, :set_page_info

  before_action :set_general_info, only: [:get_home_admin, :post_general_info]

	# GET /admin/home
	def get_home_admin
	end

	# POST /admin/home
	def post_home_admin
		if @home.update(home_params)
			flash[:notice] = "Saved!"
			redirect_to get_home_admin_url
		else
			render "get_home_admin"
		end
	end

  def post_page_info
		if @page_info.update(page_info_params)
			flash[:notice] = "Saved!"
			redirect_to :back
		else
			render "get_home_admin"
		end
	end

  def post_general_info
		if @general_info.update(general_info_params)
			flash[:notice] = "Saved!"
			redirect_to :back
		else
			render "get_home_admin"
		end
	end

	private
	def set_home 
		@home = Home.first
	end

  def set_page_info
		@page_info = PageInfo.find_by(info_type: PageInfo.info_types[:home])
	end

  def set_general_info
		@general_info = GeneralInfo.first
	end

	def home_params
		params[:home]
	end

  def general_info_params
		params[:general_info].permit(:contact_email, :facebook, :twitter, :google_plus, :instagram, :pinterest)
	end

  def page_info_params
		permitted = PageInfo.globalize_attribute_names
		params[:page_info].permit(*permitted)
	end
end