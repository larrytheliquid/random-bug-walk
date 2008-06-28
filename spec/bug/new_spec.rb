require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Bug, ".new" do
    it "should have a settable floor" do
      floor = Factory.new_floor
      Factory.new_bug(:floor => floor).floor.should == floor
    end
    
    it "should have a settable location" do
      Factory.new_bug(:location => [3, 4]).location.should == [3, 4]
    end
    
    it "should have settable moves" do
      Factory.new_bug(:moves => [[-1, -2]]).moves.should == [[-1, -2]]
    end
  end
end