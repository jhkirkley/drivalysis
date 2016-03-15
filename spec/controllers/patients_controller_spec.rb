require 'rails_helper'

RSpec.describe PatientsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      skip "LINE 7" 
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      skip "LINE 15" 
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      skip "LINE 23" 
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      skip "LINE 31"
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

end
