require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Floor, "#explored?" do
    before(:each) do
      @floor = new_floor(:height => 2, :width => 2)
    end
    
    it "should be false by default" do
      @floor.should_not be_explored
    end
    
    it "should be false with partial exploration" do
      @floor.tiles[0][0] = 5
      @floor.tiles[0][1] = 47
      @floor.tiles[1][1] = 18
      @floor.should_not be_explored
    end
    
    it "should be true with complete exploration" do
      @floor.tiles[0][0] = 5
      @floor.tiles[0][1] = 47
      @floor.tiles[1][0] = 22
      @floor.tiles[1][1] = 18
      @floor.should be_explored
    end
  end
end