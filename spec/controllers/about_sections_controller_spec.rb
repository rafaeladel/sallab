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

RSpec.describe AboutSectionsController, type: :controller do

  let(:about_section) {
    FactoryGirl.create(:valid_about_section)
  }

  # This should return the minimal set of attributes required to create a valid
  # AboutSection. As you add validations to AboutSection, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    FactoryGirl.attributes_for(:valid_about_section)
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for(:invalid_about_section)
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AboutSectionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all about_sections as @about_sections" do

      get :index, {}, valid_session
      expect(assigns(:about_sections)).to eq([about_section])
    end
  end

  describe "GET #show" do
    it "assigns the requested about_section as @about_section" do

      get :show, {:id => about_section.to_param}, valid_session
      expect(assigns(:about_section)).to eq(about_section)
    end
  end

  describe "GET #new" do
    it "assigns a new about_section as @about_section" do
      get :new, {}, valid_session
      expect(assigns(:about_section)).to be_a_new(AboutSection)
    end
  end

  describe "GET #edit" do
    it "assigns the requested about_section as @about_section" do

      get :edit, {:id => about_section.to_param}, valid_session
      expect(assigns(:about_section)).to eq(about_section)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new AboutSection" do
        expect {
          post :create, {:about_section => valid_attributes}, valid_session
        }.to change(AboutSection, :count).by(1)
      end

      it "assigns a newly created about_section as @about_section" do
        post :create, {:about_section => valid_attributes}, valid_session
        expect(assigns(:about_section)).to be_a(AboutSection)
        expect(assigns(:about_section)).to be_persisted
      end

      it "redirects to the created about_section" do
        post :create, {:about_section => valid_attributes}, valid_session
        expect(response).to redirect_to(AboutSection.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved about_section as @about_section" do
        post :create, {:about_section => invalid_attributes}, valid_session
        expect(assigns(:about_section)).to be_a_new(AboutSection)
      end

      it "re-renders the 'new' template" do
        post :create, {:about_section => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        FactoryGirl.attributes_for(:valid_about_section, title_en: "new title en")
      }

      it "updates the requested about_section" do

        put :update, {:id => about_section.to_param, :about_section => new_attributes}, valid_session
        about_section.reload
        expect(assigns(:about_section).title_en).to eq "new title en"
      end

      it "assigns the requested about_section as @about_section" do

        put :update, {:id => about_section.to_param, :about_section => valid_attributes}, valid_session
        expect(assigns(:about_section)).to eq(about_section)
      end

      it "redirects to the about_section" do

        put :update, {:id => about_section.to_param, :about_section => valid_attributes}, valid_session
        expect(response).to redirect_to(about_section)
      end
    end

    context "with invalid params" do
      it "assigns the about_section as @about_section" do

        put :update, {:id => about_section.to_param, :about_section => invalid_attributes}, valid_session
        expect(assigns(:about_section)).to eq(about_section)
      end

      it "re-renders the 'edit' template" do

        put :update, {:id => about_section.to_param, :about_section => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested about_section" do

      expect {
        delete :destroy, {:id => about_section.to_param}, valid_session
      }.to change(AboutSection, :count).by(-1)
    end

    it "redirects to the about_sections list" do

      delete :destroy, {:id => about_section.to_param}, valid_session
      expect(response).to redirect_to(about_sections_url)
    end
  end

end
