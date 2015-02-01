require 'rails_helper'

RSpec.describe HomesController, :type => :controller do
  let(:note){FactoryGirl.create(:note)}

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  #describe "GET search" do
    #it "returns http success" do
      #get :search
      #expect(response).to have_http_status(:success)
    #end
  #end
end
