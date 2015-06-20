class Product < ActiveRecord::Base
  belongs_to :origin
  belongs_to :tile_size
  belongs_to :brand
  mount_uploader :image, ProductUploader
  translates :description
  globalize_accessors locales: [:en, :ar], attributes: [:description]

  validates :code, presence: true
end
