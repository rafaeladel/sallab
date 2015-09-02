class Banner < ActiveRecord::Base
	mount_uploader :image, BannerUploader

	translates :slogan1, :slogan2
	globalize_accessors locales: [:en, :ar], attributes: [:slogan1, :slogan2]

	enum banner_type: [:home, :about, :product, :news, :promotions, :projects, :careers, :contact]

	validates :banner_type, presence: true

	has_one :gallery, class_name: "SevenGallery::Gallery"
	has_many :photos, class_name: "SevenGallery::Photo", through: :gallery
end
