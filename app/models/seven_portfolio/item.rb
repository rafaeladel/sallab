class SevenPortfolio::Item < ActiveRecord::Base
  include SevenPortfolio::Concerns::Item
  translates :title, :description
  globalize_accessors locales: [:en, :ar], attributes: [:title, :description]
end