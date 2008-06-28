require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Simulator, ".new" do
    it "should have a Floor" do
      new_simulator.floor.should be_kind_of(Floor)
    end
    
    it "should have a Bug" do
      new_simulator.bug.should be_kind_of(Bug)
    end
    
    it "should assign a bug to a Floor" do
      new_simulator.bug.floor.should be_kind_of(Floor)
    end
    
    it "should set its bug location to a random Floor tile" do
      Floor.any_instance.expects(:random_tile).returns([0, 0])
      new_simulator.bug.location.should == [0, 0]
    end
    
    it "should make the initial location stepped on" do
      Floor.any_instance.expects(:random_tile).returns([0, 0])
      simulator = new_simulator
      simulator.floor.tiles[simulator.bug.location.first][simulator.bug.location.last].should == 1 
    end        
  end
end