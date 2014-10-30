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

RSpec.describe LumberjacksController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Lumberjack. As you add validations to Lumberjack, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LumberjacksController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all lumberjacks as @lumberjacks" do
      lumberjack = Lumberjack.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:lumberjacks)).to eq([lumberjack])
    end
  end

  describe "GET show" do
    it "assigns the requested lumberjack as @lumberjack" do
      lumberjack = Lumberjack.create! valid_attributes
      get :show, {:id => lumberjack.to_param}, valid_session
      expect(assigns(:lumberjack)).to eq(lumberjack)
    end
  end

  describe "GET new" do
    it "assigns a new lumberjack as @lumberjack" do
      get :new, {}, valid_session
      expect(assigns(:lumberjack)).to be_a_new(Lumberjack)
    end
  end

  describe "GET edit" do
    it "assigns the requested lumberjack as @lumberjack" do
      lumberjack = Lumberjack.create! valid_attributes
      get :edit, {:id => lumberjack.to_param}, valid_session
      expect(assigns(:lumberjack)).to eq(lumberjack)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Lumberjack" do
        expect {
          post :create, {:lumberjack => valid_attributes}, valid_session
        }.to change(Lumberjack, :count).by(1)
      end

      it "assigns a newly created lumberjack as @lumberjack" do
        post :create, {:lumberjack => valid_attributes}, valid_session
        expect(assigns(:lumberjack)).to be_a(Lumberjack)
        expect(assigns(:lumberjack)).to be_persisted
      end

      it "redirects to the created lumberjack" do
        post :create, {:lumberjack => valid_attributes}, valid_session
        expect(response).to redirect_to(Lumberjack.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved lumberjack as @lumberjack" do
        post :create, {:lumberjack => invalid_attributes}, valid_session
        expect(assigns(:lumberjack)).to be_a_new(Lumberjack)
      end

      it "re-renders the 'new' template" do
        post :create, {:lumberjack => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested lumberjack" do
        lumberjack = Lumberjack.create! valid_attributes
        put :update, {:id => lumberjack.to_param, :lumberjack => new_attributes}, valid_session
        lumberjack.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested lumberjack as @lumberjack" do
        lumberjack = Lumberjack.create! valid_attributes
        put :update, {:id => lumberjack.to_param, :lumberjack => valid_attributes}, valid_session
        expect(assigns(:lumberjack)).to eq(lumberjack)
      end

      it "redirects to the lumberjack" do
        lumberjack = Lumberjack.create! valid_attributes
        put :update, {:id => lumberjack.to_param, :lumberjack => valid_attributes}, valid_session
        expect(response).to redirect_to(lumberjack)
      end
    end

    describe "with invalid params" do
      it "assigns the lumberjack as @lumberjack" do
        lumberjack = Lumberjack.create! valid_attributes
        put :update, {:id => lumberjack.to_param, :lumberjack => invalid_attributes}, valid_session
        expect(assigns(:lumberjack)).to eq(lumberjack)
      end

      it "re-renders the 'edit' template" do
        lumberjack = Lumberjack.create! valid_attributes
        put :update, {:id => lumberjack.to_param, :lumberjack => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested lumberjack" do
      lumberjack = Lumberjack.create! valid_attributes
      expect {
        delete :destroy, {:id => lumberjack.to_param}, valid_session
      }.to change(Lumberjack, :count).by(-1)
    end

    it "redirects to the lumberjacks list" do
      lumberjack = Lumberjack.create! valid_attributes
      delete :destroy, {:id => lumberjack.to_param}, valid_session
      expect(response).to redirect_to(lumberjacks_url)
    end
  end

end