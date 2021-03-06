require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Floor, "#width" do
    before(:each) do
      @floor = new_floor(:width => 7)
    end

    it "should be equal to the initialized width of the floor" do
      @floor.width.should == 7
    end
  end
end