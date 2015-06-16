require 'rails_helper'

RSpec.describe Home, type: :model do
  	describe "Home translations" do
  		it "returns true" do
  			home = FactoryGirl.create(:home)
  			expect(home.title_ar).to eq "arabic title"
  			expect(home.title_en).to eq "english title"
  		end
	end
end
