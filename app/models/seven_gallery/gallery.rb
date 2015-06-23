class SevenGallery::Gallery < ActiveRecord::Base
	include SevenGallery::Concerns::Gallery
	belongs_to :banner, class_name: "::Banner"
	translates :title
  globalize_accessors locales: [:en, :ar], attributes: [:title]

end