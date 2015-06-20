require 'rails_helper'

RSpec.describe "TileSizes", type: :request do
  describe "GET /tile_sizes" do
    it "works! (now write some real specs)" do
      get tile_sizes_path
      expect(response).to have_http_status(200)
    end
  end
end
