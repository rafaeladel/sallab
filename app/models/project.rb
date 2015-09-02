class Project < ActiveRecord::Base
  include SevenPortfolio::Concerns::Item

  has_one :project_video, class_name:'SevenPortfolio::ItemVideo', foreign_key: "project_id"
  has_one :project_gallery, class_name: 'SevenGallery::Gallery', foreign_key: "project_id"
  accepts_nested_attributes_for :project_video, :project_gallery, reject_if: :no_media?

  def set_gallery_name
    build_project_gallery(title: "#{title}_gallery")
  end

  def type_content
    if no_media?
      nil
    elsif gallery?
      project_gallery
    elsif video?
      project_video
    end
  end

  translates :title, :description
  globalize_accessors locales: [:en, :ar], attributes: [:title, :description]
end
