require 'rails_helper'

RSpec.describe NotesController, :type => :controller do
  describe ":show" do
    it "should have an show action" do
      get :show,:username=>"user1",:note_id=>"1"
      expect(response).to be_success
    end
    it "renders the show template" do
      get :show,,:username=>"user1",:note_id=>"1"
      expect(response).to render_template("show")
    end
  end
  describe ":user" do
    it "should have an user action" do
      get :user,:username=>"user1"
      expect(response).to be_success
    end
  end
end
