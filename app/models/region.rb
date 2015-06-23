class Region < ActiveRecord::Base
  has_many :branches

  translates :title
  globalize_accessors locales: [:en, :ar], attributes: [:title]

  validates :title_en, presence: true
end
