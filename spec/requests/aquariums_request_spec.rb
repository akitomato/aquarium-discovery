require 'rails_helper'

RSpec.describe "Aquariums", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/aquariums/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/aquariums/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/aquariums/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/aquariums/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /search" do
    it "returns http success" do
      get "/aquariums/search"
      expect(response).to have_http_status(:success)
    end
  end

end
