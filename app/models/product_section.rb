class ProductSection < ActiveRecord::Base
  translates :title
  globalize_accessors locales: [:en, :ar], attributes: [:title]

  mount_uploader :image, ProductSectionUploader

  has_many :products
  validates :title_en, presence: true


  before_save :slugify

  private
  def slugify
    self.slug = title_en.parameterize
  end
end
