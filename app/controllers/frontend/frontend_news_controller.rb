class Frontend::FrontendNewsController < Frontend::FrontendApplicationController 
	def index 
		@banner = Banner.find_by(banner_type: Banner.banner_types[:news])
		@news_items = SevenPortfolio::Item.page(params[:page]).per(7)
	end
end