class SevenPortfolio::ItemsController < ApplicationController
  include SevenPortfolio::Concerns::ItemsController
  include ::PageInfoControllerConcern

  private
  # Only allow a trusted parameter "white list" through.
  def item_params
    permitted = SevenPortfolio::Item.globalize_attribute_names + [:item_type, item_video_attributes: [:url, :description, :title], item_gallery_attributes: [:title]]
    params[:item].permit(permitted)
  end
end