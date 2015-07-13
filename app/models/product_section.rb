class ProductSection < ActiveRecord::Base
  translates :title
  globalize_accessors locales: [:en, :ar], attributes: [:title]

  mount_uploader :image, ProductSectionUploader

  has_many :products
  validates :title_en, presence: true


  before_save :sluggify

  private
  def sluggify
    self.slug = title_en.parameterize
  end
end
