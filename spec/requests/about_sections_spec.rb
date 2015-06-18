require 'rails_helper'

RSpec.describe "AboutSections", type: :request do
  describe "GET /about_sections" do
    it "works! (now write some real specs)" do
      get about_sections_path
      expect(response).to have_http_status(200)
    end
  end
end
