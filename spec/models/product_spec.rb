require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:product) {
    FactoryGirl.create(:valid_product)
  }

  describe "Product has assoc" do
    it "returns true" do
      expect(product.brand).to be_a Brand
      expect(product.origin).to be_a Origin
      expect(product.tile_size).to be_a TileSize
    end
  end
end
