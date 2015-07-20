class PageInfo < ActiveRecord::Base
  include ::PageInfoModelConcern
  enum info_type: [:home, :about, :product_section, :product, :branch, :gallery, :contact, :item, :job]
end
