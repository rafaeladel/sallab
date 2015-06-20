class ProductSection < ActiveRecord::Base
  translates :title
  globalize_accessors locales: [:en, :ar], attributes: [:title]
  validates :title_en, presence: true
end
