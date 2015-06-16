require "rails_helper"

RSpec.describe BannersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/banners").to route_to("banners#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/banners/new").to route_to("banners#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/banners/1").to route_to("banners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/banners/1/edit").to route_to("banners#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/banners").to route_to("banners#create")
    end

    it "routes to #update" do
      expect(:put => "/admin/banners/1").to route_to("banners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/banners/1").to route_to("banners#destroy", :id => "1")
    end

  end
end
