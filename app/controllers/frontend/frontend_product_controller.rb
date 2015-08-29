class Frontend::FrontendProductController < Frontend::FrontendApplicationController
  before_action :get_banner

  def index
    @page_info = get_page_info(:product)
    @product = Product.find(params[:id])
    render partial: "frontend/frontend_product/product_partial", product: @product
  end

  private
  def get_banner
    @banner = Banner.find_by(banner_type: Banner.banner_types[:product])
  end


end