require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #new" do
    it "returns a successful response" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "assigns a new User to @user" do
      get :new
      expect(assigns(:user)).to be_a_new(User)
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      let(:valid_attributes) { attributes_for(:user) }

      it "creates a new user" do
        expect {
          post :create, params: { user: valid_attributes }
        }.to change(User, :count).by(1)
      end

      it "redirects to the root path with a notice" do
        post :create, params: { user: valid_attributes }
        expect(response).to redirect_to(root_path)
        expect(flash[:notice]).to eq("Регистрация успешна!")
      end
    end

    context "with invalid attributes" do
      let(:invalid_attributes) { { email: "", password: "password", password_confirmation: "password" } }

      it "does not create a new user" do
        expect {
          post :create, params: { user: invalid_attributes }
        }.to_not change(User, :count)
      end

      it "renders the :new template" do
        post :create, params: { user: invalid_attributes }
        expect(response).to render_template(:new)
      end
    end
  end
end