require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Floor, "#random_tile" do
    before(:each) do
      @floor = Factory.new_floor
    end

    it "should be a kind of Array" do
      @floor.random_tile.should be_kind_of(Array)
    end
    
    it "should have two elements" do
      @floor.random_tile.size.should == 2
    end
    
    it "should contain integers" do
      @floor.random_tile.each {|element| element.should be_kind_of(Integer) }
    end
    
    it "should be an existing tile" do
      valid_tile = @floor.random_tile
      (@floor.tiles[valid_tile.first][valid_tile.last] rescue nil).should_not be_nil
    end
  end
end