require 'rails_helper'

RSpec.describe "ProductSections", type: :request do
  describe "GET /product_sections" do
    it "works! (now write some real specs)" do
      get product_sections_path
      expect(response).to have_http_status(200)
    end
  end
end
