class Frontend::FrontendGalleryController < Frontend::FrontendApplicationController 
	def index
		@page_info = get_page_info(:gallery)

		@banner = Banner.find_by(banner_type: Banner.banner_types[:home])
		@galleries = SevenGallery::Gallery.where(banner: nil, seven_portfolio_item_id: nil)
	end
end