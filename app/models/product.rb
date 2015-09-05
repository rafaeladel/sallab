class Product < ActiveRecord::Base
  belongs_to :origin
  belongs_to :tile_size
  belongs_to :brand
  belongs_to :product_section
  has_many :colors

  mount_uploader :image, ProductUploader

  has_one :product_gallery, class_name: 'SevenGallery::Gallery', foreign_key: "product_id"
  has_and_belongs_to_many :related_products, class_name: "::Product", join_table: "related_products", association_foreign_key: "related_product_id"


  before_save :set_gallery_name

  translates :description
  globalize_accessors locales: [:en, :ar], attributes: [:description]

  validates :origin, presence: true
  validates :brand, presence: true
  validates :tile_size, presence: true
  validates :code, presence: true

  accepts_nested_attributes_for :colors, reject_if: :all_blank, allow_destroy: true

  def set_gallery_name
    build_product_gallery(title: "product_#{id}_gallery")
  end
end
