require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Simulator, "#simulate" do
    before(:each) do
      srand(1337)
    end
    
    describe "when the bug dies" do
      before(:each) do
        @simulator = new_simulator(:height => 40, :width => 20, :moves_lifetime => 3, :possible_moves => [[-1, 0], [1, 0], [0, -1], [0, 1]])        
      end
      
      it "should complete" do
        lambda { Timeout.timeout(3) { @simulator.simulate } }.should_not raise_error
      end
    end
    
    describe "when the bug reaches its goal" do
      before(:each) do
        @simulator = new_simulator(:height => 2, :width => 2, :goal => lambda{|bug| bug.floor.explored? }, :moves_lifetime => 1.0/0, :possible_moves => [[-1, 0], [1, 0], [0, -1], [0, 1]])
      end
      
      it "should complete" do
        lambda { Timeout.timeout(3) { @simulator.simulate } }.should_not raise_error
      end
    end
  end
end