require "rails_helper"

RSpec.describe AboutController, type: :controller do
	let(:about) {
		FactoryGirl.create(:about)
	}

	describe "updating about" do 
		new_about = FactoryGirl.attributes_for(:about, title_en: "new title")
		it "redirects to get_about_admin_url" do
			put :post_about_admin, about: new_about
			expect(assigns(:about).title).to eq "new title"
			expect(response.code).to eq "302"
		end
	end
end	