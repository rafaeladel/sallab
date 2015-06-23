class Branch < ActiveRecord::Base
  belongs_to :region
  translates :address
  globalize_accessors locales: [:en, :ar], attributes: [:address]

  validates :address_en, presence: true
  validates :region, presence: true
end
