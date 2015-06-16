require "rails_helper"

RSpec.describe HomeController, type: :controller do
	let(:home) {
		FactoryGirl.create(:home)
	}

	describe "updating home" do 
		new_home = FactoryGirl.attributes_for(:home, title_en: "new title")
		it "redirects to get_home_admin_url" do
			put :post_home_admin, home: new_home 
			expect(assigns(:home).title).to eq "new title"
			expect(response.code).to eq "302"
		end
	end
end	