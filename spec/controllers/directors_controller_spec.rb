require 'rails_helper'

RSpec.describe DirectorsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new_form" do
    it "returns http success" do
      get :new_form
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create_row" do
    it "returns http success" do
      get :create_row
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit_form" do
    it "returns http success" do
      get :edit_form
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #uptdate_row" do
    it "returns http success" do
      get :uptdate_row
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end

end
