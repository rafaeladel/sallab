class SevenGallery::Gallery < ActiveRecord::Base
	include SevenGallery::Concerns::Gallery
	belongs_to :banner, class_name: "::Banner"
end