require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Floor, "#steps" do
    before(:each) do
      @floor = Factory.new_floor(:height => 2, :width => 2)
    end
    
    describe "by default" do            
      it "should be 0" do
        @floor.steps.should == 0
      end
    end
    
    describe "with traveled floors" do      
      it "should be the total number of steps on each tile" do
        @floor.tiles[0][0] = 3
        @floor.tiles[1][0] = 32
        @floor.tiles[1][1] = 9        
        
        @floor.steps.should == 44
      end
    end
  end
end