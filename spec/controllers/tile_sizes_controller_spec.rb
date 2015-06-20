require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe TileSizesController, type: :controller do

  let(:tile_size) {
    FactoryGirl.create(:valid_tile_size)
  }
  # This should return the minimal set of attributes required to create a valid
  # TileSize. As you add validations to TileSize, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    FactoryGirl.attributes_for(:valid_tile_size)
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for(:invalid_tile_size)
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TileSizesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all tile_sizes as @tile_sizes" do
      
      get :index, {}, valid_session
      expect(assigns(:tile_sizes)).to eq([tile_size])
    end
  end

  describe "GET #show" do
    it "assigns the requested tile_size as @tile_size" do
      
      get :show, {:id => tile_size.to_param}, valid_session
      expect(assigns(:tile_size)).to eq(tile_size)
    end
  end

  describe "GET #new" do
    it "assigns a new tile_size as @tile_size" do
      get :new, {}, valid_session
      expect(assigns(:tile_size)).to be_a_new(TileSize)
    end
  end

  describe "GET #edit" do
    it "assigns the requested tile_size as @tile_size" do
      
      get :edit, {:id => tile_size.to_param}, valid_session
      expect(assigns(:tile_size)).to eq(tile_size)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new TileSize" do
        expect {
          post :create, {:tile_size => valid_attributes}, valid_session
        }.to change(TileSize, :count).by(1)
      end

      it "assigns a newly created tile_size as @tile_size" do
        post :create, {:tile_size => valid_attributes}, valid_session
        expect(assigns(:tile_size)).to be_a(TileSize)
        expect(assigns(:tile_size)).to be_persisted
      end

      it "redirects to the created tile_size" do
        post :create, {:tile_size => valid_attributes}, valid_session
        expect(response).to redirect_to(TileSize.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved tile_size as @tile_size" do
        post :create, {:tile_size => invalid_attributes}, valid_session
        expect(assigns(:tile_size)).to be_a_new(TileSize)
      end

      it "re-renders the 'new' template" do
        post :create, {:tile_size => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        FactoryGirl.attributes_for(:valid_tile_size, height: 50, width: 20)
      }

      it "updates the requested tile_size" do
        
        put :update, {:id => tile_size.to_param, :tile_size => new_attributes}, valid_session
        tile_size.reload
        expect(assigns(:tile_size).height).to eq 50
      end

      it "assigns the requested tile_size as @tile_size" do
        
        put :update, {:id => tile_size.to_param, :tile_size => valid_attributes}, valid_session
        expect(assigns(:tile_size)).to eq(tile_size)
      end

      it "redirects to the tile_size" do
        
        put :update, {:id => tile_size.to_param, :tile_size => valid_attributes}, valid_session
        expect(response).to redirect_to(tile_size)
      end
    end

    context "with invalid params" do
      it "assigns the tile_size as @tile_size" do
        
        put :update, {:id => tile_size.to_param, :tile_size => invalid_attributes}, valid_session
        expect(assigns(:tile_size)).to eq(tile_size)
      end

      it "re-renders the 'edit' template" do
        
        put :update, {:id => tile_size.to_param, :tile_size => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested tile_size" do
      
      expect {
        delete :destroy, {:id => tile_size.to_param}, valid_session
      }.to change(TileSize, :count).by(-1)
    end

    it "redirects to the tile_sizes list" do
      
      delete :destroy, {:id => tile_size.to_param}, valid_session
      expect(response).to redirect_to(tile_sizes_url)
    end
  end

end
