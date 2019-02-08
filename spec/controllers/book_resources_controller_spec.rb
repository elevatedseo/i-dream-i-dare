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

RSpec.describe BookResourcesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # BookResource. As you add validations to BookResource, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BookResourcesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all book_resources as @book_resources" do
      book_resource = BookResource.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:book_resources)).to eq([book_resource])
    end
  end

  describe "GET #show" do
    it "assigns the requested book_resource as @book_resource" do
      book_resource = BookResource.create! valid_attributes
      get :show, {:id => book_resource.to_param}, valid_session
      expect(assigns(:book_resource)).to eq(book_resource)
    end
  end

  describe "GET #new" do
    it "assigns a new book_resource as @book_resource" do
      get :new, {}, valid_session
      expect(assigns(:book_resource)).to be_a_new(BookResource)
    end
  end

  describe "GET #edit" do
    it "assigns the requested book_resource as @book_resource" do
      book_resource = BookResource.create! valid_attributes
      get :edit, {:id => book_resource.to_param}, valid_session
      expect(assigns(:book_resource)).to eq(book_resource)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new BookResource" do
        expect {
          post :create, {:book_resource => valid_attributes}, valid_session
        }.to change(BookResource, :count).by(1)
      end

      it "assigns a newly created book_resource as @book_resource" do
        post :create, {:book_resource => valid_attributes}, valid_session
        expect(assigns(:book_resource)).to be_a(BookResource)
        expect(assigns(:book_resource)).to be_persisted
      end

      it "redirects to the created book_resource" do
        post :create, {:book_resource => valid_attributes}, valid_session
        expect(response).to redirect_to(BookResource.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved book_resource as @book_resource" do
        post :create, {:book_resource => invalid_attributes}, valid_session
        expect(assigns(:book_resource)).to be_a_new(BookResource)
      end

      it "re-renders the 'new' template" do
        post :create, {:book_resource => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested book_resource" do
        book_resource = BookResource.create! valid_attributes
        put :update, {:id => book_resource.to_param, :book_resource => new_attributes}, valid_session
        book_resource.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested book_resource as @book_resource" do
        book_resource = BookResource.create! valid_attributes
        put :update, {:id => book_resource.to_param, :book_resource => valid_attributes}, valid_session
        expect(assigns(:book_resource)).to eq(book_resource)
      end

      it "redirects to the book_resource" do
        book_resource = BookResource.create! valid_attributes
        put :update, {:id => book_resource.to_param, :book_resource => valid_attributes}, valid_session
        expect(response).to redirect_to(book_resource)
      end
    end

    context "with invalid params" do
      it "assigns the book_resource as @book_resource" do
        book_resource = BookResource.create! valid_attributes
        put :update, {:id => book_resource.to_param, :book_resource => invalid_attributes}, valid_session
        expect(assigns(:book_resource)).to eq(book_resource)
      end

      it "re-renders the 'edit' template" do
        book_resource = BookResource.create! valid_attributes
        put :update, {:id => book_resource.to_param, :book_resource => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested book_resource" do
      book_resource = BookResource.create! valid_attributes
      expect {
        delete :destroy, {:id => book_resource.to_param}, valid_session
      }.to change(BookResource, :count).by(-1)
    end

    it "redirects to the book_resources list" do
      book_resource = BookResource.create! valid_attributes
      delete :destroy, {:id => book_resource.to_param}, valid_session
      expect(response).to redirect_to(book_resources_url)
    end
  end

end
