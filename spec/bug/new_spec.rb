require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Bug, ".new" do
    it "should have a settable floor" do
      floor = new_floor
      new_bug(:floor => floor).floor.should == floor
    end
    
    it "should have a settable location" do
      new_bug(:location => [3, 4]).location.should == [3, 4]
    end
    
    it "should have settable possible moves" do
      new_bug(:possible_moves => [[-1, -2]]).possible_moves.should == [[-1, -2]]
    end
    
    it "should have settable a moves lifetime limit" do
      moves_lifetime = 1337
      new_bug(:moves_lifetime => moves_lifetime).moves_lifetime.should == moves_lifetime
    end
  end
end