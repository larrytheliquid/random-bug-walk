require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Floor, "#tiles" do
    before(:each) do
      @floor = Factory.new_floor
    end

    it "should be a kind of Array" do
      @floor.tiles.should be_kind_of(Array)
    end

    it "should contain kinds of sub-arrays" do
      @floor.tiles.first.should be_kind_of(Array)    
    end

    it "should have all 0s by default" do
      @floor.tiles.each do |column|
        column.each {|tile| tile.should == 0}
      end
    end
  end
end