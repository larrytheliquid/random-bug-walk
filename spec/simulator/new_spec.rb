require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Simulator, ".new" do
    it "should have a Floor" do
      Factory.new_simulator.floor.should be_kind_of(Floor)
    end
    
    it "should have a Bug" do
      Factory.new_simulator.bug.should be_kind_of(Bug)
    end
    
    it "should assign a bug to a Floor" do
      Factory.new_simulator.bug.floor.should be_kind_of(Floor)
    end
    
    it "should set its bug location to a random Floor tile" do
      Floor.any_instance.expects(:random_tile).returns([0, 0])
      Factory.new_simulator.bug.location.should == [0, 0]
    end
    
    it "should have a maximum_steps limit" do
      maximum_steps = 1337
      Factory.new_simulator(:maximum_steps => maximum_steps).maximum_steps.should == maximum_steps
    end
  end
end