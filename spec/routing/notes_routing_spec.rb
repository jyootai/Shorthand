require 'rails_helper'
RSpec.describe NotesController, :type=>:routing do
  describe "notes routing" do
    it "routes to #show " do
      expect(:get=>"test/1").to route_to(:controller=>"notes",
                                         :action=>"show",
                                         :username=>"test",
                                         :note_id=>"1")
    end
  end
end
