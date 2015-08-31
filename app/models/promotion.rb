class Promotion < ActiveRecord::Base
  include SevenPortfolio::Concerns::Item

  has_one :promotion_video, class_name:'SevenPortfolio::ItemVideo', foreign_key: "promotion_id"
  has_one :promotion_gallery, class_name: 'SevenGallery::Gallery', foreign_key: "promotion_id"
  accepts_nested_attributes_for :promotion_video, :promotion_gallery, reject_if: :no_media?

  def set_gallery_name
    build_promotion_gallery(title: "#{title}_gallery")
  end

  def type_content
    if no_media?
      nil
    elsif gallery?
      promotion_gallery
    elsif video?
      promotion_video
    end
  end

  translates :title, :description
  globalize_accessors locales: [:en, :ar], attributes: [:title, :description]
end
