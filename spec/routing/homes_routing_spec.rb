require 'rails_helper'
RSpec.describe HomesController, :type=>:routing do
  describe "homes routing" do
    it "routes to / " do
      expect(:get=>"/").to route_to(:controller=>"homes",
                                    :action=>"index")
    end
  end
end
