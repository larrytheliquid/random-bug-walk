require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Bug, "#dead?" do
    it "should be false when the number of moves is less than the moves lifetime" do
      bug = new_bug(:moves_lifetime => 3)
      bug.expects(:number_of_moves).returns(2)
      bug.should_not be_dead      
    end
    
    it "should be true when the number of moves is greater than the moves lifetime" do
      bug = new_bug(:moves_lifetime => 2)
      bug.expects(:number_of_moves).returns(3)
      bug.should be_dead      
    end
    
    it "should be true when the number of moves is equal to the moves lifetime" do
      bug = new_bug(:moves_lifetime => 2)
      bug.expects(:number_of_moves).returns(2)
      bug.should be_dead
    end
  end  
end