class Frontend::FrontendProductSectionController < Frontend::FrontendApplicationController
  before_action :get_banner

  def index
    @page_info = get_page_info(:product_section)

    @product_section = ProductSection.find_by_slug(params[:slug])
    @products = @product_section.products.where(get_search_params).page(params[:page]).per(8)
  end

  private
  def get_banner
    @banner = Banner.find_by(banner_type: Banner.banner_types[:product])
  end

  def get_search_params
    if params.has_key? :product
      params.require(:product).permit(:description, :origin_id, :brand_id, :tile_size_id, :is_imported, :is_wall, :is_floor).reject { |i, v| v.blank? }
    end
  end
end