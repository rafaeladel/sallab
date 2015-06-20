class TileSize < ActiveRecord::Base
  has_many :products
  validates_numericality_of :height, greater_than: 0
  validates_numericality_of :width, greater_than: 0
end
