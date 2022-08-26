require 'rails_helper'

RSpec.describe "Animals", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/animals/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/animals/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/animals/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/animals/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /search" do
    it "returns http success" do
      get "/animals/search"
      expect(response).to have_http_status(:success)
    end
  end

end
