class SevenGallery::Gallery < ActiveRecord::Base
	include SevenGallery::Concerns::Gallery
	belongs_to :banner, class_name: "::Banner"
	belongs_to :news, class_name: "::News"
	belongs_to :promotion, class_name: "::Promotion"
	belongs_to :project, class_name: "::Project"
	belongs_to :product, class_name: "::Product"
	translates :title
  globalize_accessors locales: [:en, :ar], attributes: [:title]

end