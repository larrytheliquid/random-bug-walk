require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Floor, "#height" do
    before(:each) do
      @floor = new_floor(:height => 7)
    end

    it "should be equal to the initialized height of the floor" do
      @floor.height.should == 7
    end
  end
end