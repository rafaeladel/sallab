class Frontend::FrontendPromotionsController < Frontend::FrontendApplicationController

  before_action :get_banner, :set_meta_page_info, only: [:index, :get_item]

	def index 
		@promotions = Promotion.page(params[:page]).per(7)
	end

  def get_item
		@promotion = Promotion.find(params[:id])
	end

  private
  def get_banner
		@banner = Banner.find_by(banner_type: Banner.banner_types[:promotions])
	end

  def set_meta_page_info
		@page_info = get_page_info(:promotion)
	end
end