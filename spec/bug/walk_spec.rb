require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Bug, "#walk" do
    it "should move until it cannot" do
      bug = new_bug(:floor => new_floor(:height => 2, :width => 2), :location => [0, 0])
      bug.expects(:move).returns(nil)      
      bug.walk
    end
    
    it "should return the number of moves made" do
      bug = new_bug(:floor => new_floor(:height => 2, :width => 2), :location => [0, 0], :moves_lifetime => 3)
      srand(1337)
      number_of_moves = Timeout.timeout(3) { bug.walk }
      number_of_moves.should >= 0
      number_of_moves.should <= 3
      number_of_moves.should == bug.number_of_moves
    end
  end  
end