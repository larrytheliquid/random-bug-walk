require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Floor, "#step_on" do
    before(:each) do
      @floor = Factory.new_floor(:height => 1, :width => 1)
    end
    
    describe "when stepping outside the bounds of the floor" do
      it "should be nil when negatively out of height bounds" do
        @floor.step_on(-1337, 0).should be_nil
      end
      
      it "should be nil when negatively out of width bounds" do
        @floor.step_on(0, -1337).should be_nil 
      end
      
      it "should be nil when negatively out of height and width bounds" do
        @floor.step_on(-1337, -1337).should be_nil
      end
      
      it "should be nil when positively out of height bounds" do
        @floor.step_on(1337, 0).should be_nil
      end
      
      it "should be nil when positively out of width bounds" do
        @floor.step_on(0, 1337).should be_nil
      end
      
      it "should be nil when positively out of height and width bounds" do
        @floor.step_on(1337, 1337).should be_nil
      end
    end
    
    describe "when stepping inside the bounds of the floor" do
      it "should be the incremented number for that tile" do
        @floor.step_on(0, 0).should == 1
      end
      
      it "should increment the tile" do
        @floor.step_on(0, 0)
        @floor.tiles[0][0].should == 1
        @floor.step_on(0, 0)
        @floor.tiles[0][0].should == 2        
      end
    end
  end
end