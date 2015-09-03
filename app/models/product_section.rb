class ProductSection < ActiveRecord::Base
  translates :title
  globalize_accessors locales: [:en, :ar], attributes: [:title]

  mount_uploader :image, ProductSectionUploader

  has_many :products
  validates :title_en, presence: true
  validates :search_fields, presence: true


  before_save :slugify

  def search_for?(field)
    self.search_fields.split(",").map{ |e| e.strip.downcase }.include? field.to_s
  end

  private
  def slugify
    self.slug = title_en.parameterize
  end
end
