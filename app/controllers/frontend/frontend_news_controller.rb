class Frontend::FrontendNewsController < Frontend::FrontendApplicationController

  before_action :get_banner, only: [:index, :get_item]

	def index 
		@news_items = SevenPortfolio::Item.page(params[:page]).per(7)
	end

  def get_item
		@news_item = SevenPortfolio::Item.find(params[:id])
	end

  private
  def get_banner
		@banner = Banner.find_by(banner_type: Banner.banner_types[:news])
	end
end