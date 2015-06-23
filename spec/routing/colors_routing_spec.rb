require "rails_helper"

RSpec.describe ColorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/colors").to route_to("colors#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/colors/new").to route_to("colors#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/colors/1").to route_to("colors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/colors/1/edit").to route_to("colors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/colors").to route_to("colors#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/colors/1").to route_to("colors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/colors/1").to route_to("colors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/colors/1").to route_to("colors#destroy", :id => "1")
    end

  end
end
