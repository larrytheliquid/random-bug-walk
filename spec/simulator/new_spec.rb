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
      floor = mock("floor", :height => 1, :width => 1, :class => Floor)
      Floor.should_receive(:new).at_least(:once).and_return(floor)
      floor.should_receive(:random_tile).and_return([0, 0])
      Factory.new_simulator.bug.location.should == [0, 0]
    end
    
    it "should have a maximum_steps limit" do
      maximum_steps = 1337
      Factory.new_simulator(:maximum_steps => maximum_steps).maximum_steps.should == maximum_steps
    end
  end
end