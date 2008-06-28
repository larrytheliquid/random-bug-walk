require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Simulator, ".new" do
    it "should have a Floor" do
      floor = Factory.new_floor
      Factory.new_simulator(:floor => floor).floor.should == floor
    end
    
    it "should have a Bug" do
      bug = Factory.new_bug
      Factory.new_simulator(:bug => bug).bug.should == bug
    end
    
    it "should have a maximum_steps limit" do
      maximum_steps = 1337
      Factory.new_simulator(:maximum_steps => maximum_steps).maximum_steps.should == maximum_steps
    end
  end
end