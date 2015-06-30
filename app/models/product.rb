class Product < ActiveRecord::Base
  belongs_to :origin
  belongs_to :tile_size
  belongs_to :brand
  belongs_to :product_section
  has_many :colors

  mount_uploader :image, ProductUploader

  translates :description
  globalize_accessors locales: [:en, :ar], attributes: [:description]

  validates :origin, presence: true
  validates :brand, presence: true
  validates :tile_size, presence: true
  validates :code, presence: true

  accepts_nested_attributes_for :colors, reject_if: :all_blank, allow_destroy: true

end
