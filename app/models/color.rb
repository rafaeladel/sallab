class Color < ActiveRecord::Base
  belongs_to :product
  validates :code, presence: true
end
