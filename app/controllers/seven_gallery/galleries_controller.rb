class SevenGallery::GalleriesController < ApplicationController
  include SevenGallery::Concerns::GalleriesController

  private
  def gallery_params
    permitted = SevenGallery::Gallery.globalize_attribute_names + []
    params[:gallery].permit(*permitted)
  end
end