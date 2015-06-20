require "rails_helper"

RSpec.describe TileSizesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/tile_sizes").to route_to("tile_sizes#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/tile_sizes/new").to route_to("tile_sizes#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/tile_sizes/1").to route_to("tile_sizes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/tile_sizes/1/edit").to route_to("tile_sizes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/tile_sizes").to route_to("tile_sizes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/tile_sizes/1").to route_to("tile_sizes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/tile_sizes/1").to route_to("tile_sizes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/tile_sizes/1").to route_to("tile_sizes#destroy", :id => "1")
    end

  end
end
