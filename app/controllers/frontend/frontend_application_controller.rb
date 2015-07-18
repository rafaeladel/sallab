class Frontend::FrontendApplicationController < ApplicationController

	layout "frontend/layout"


	before_action :set_locale

	before_action :set_nav

	def set_locale
		if cookies[:locale] and I18n.locale_available?(cookies[:locale])
			l = cookies[:locale]
		else
			l = I18n.default_locale
			cookies.permanent[:locale] = l
		end

		I18n.locale = l
	end

	def set_nav
		@general_info = GeneralInfo.first
		@about_sections = AboutSection.all
		@product_sections = ProductSection.all
	end

	def default_url_options(options = {})
		{ locale: I18n.locale }.merge options
	end
end
