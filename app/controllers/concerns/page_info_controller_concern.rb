module ::PageInfoControllerConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_page_info, only: [:get_page_info, :post_page_info]
  end

  def get_page_info
  end

  def post_page_info
    if @page_info.update(page_info_params)
      flash[:notice] = "Saved!"
      redirect_to :back
    else
      render "get_page_info"
    end
  end

  private
  def set_page_info
    @page_info = PageInfo.find_by(info_type: PageInfo.info_types[controller_name.singularize.to_sym])
  end

  def page_info_params
    permitted = PageInfo.globalize_attribute_names
    params[:page_info].permit(*permitted)
  end
end