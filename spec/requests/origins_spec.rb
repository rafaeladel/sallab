require 'rails_helper'

RSpec.describe "Origins", type: :request do
  describe "GET /origins" do
    it "works! (now write some real specs)" do
      get origins_path
      expect(response).to have_http_status(200)
    end
  end
end
