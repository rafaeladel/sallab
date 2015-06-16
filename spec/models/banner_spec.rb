require 'rails_helper'

RSpec.describe Banner, type: :model do
	let(:banner) {
		FactoryGirl.create(:valid_banner)
	}
  describe "Banner Gallery" do
  	it "should return true" do
  		expect(banner.gallery).to be_a SevenGallery::Gallery
  	end
  end

  describe "Banner Translations" do
  	it "should return true" do
  		I18n.locale = :en
  		expect(banner.slogan1).to eq "test slogan1"

  		I18n.locale = :ar
  		expect(banner.slogan1).to eq "arabic slogan1"
  	end
  end
end
