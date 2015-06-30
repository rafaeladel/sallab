class SevenGallery::Gallery < ActiveRecord::Base
	include SevenGallery::Concerns::Gallery
	belongs_to :banner, class_name: "::Banner"
	belongs_to :news, class_name: "::News"
	translates :title
  globalize_accessors locales: [:en, :ar], attributes: [:title]

end