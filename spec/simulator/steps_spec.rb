require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Simulator, "#steps" do
    before(:each) do
      @simulator = new_simulator
    end
    
    it "should be 1 by default" do
      @simulator.steps.should == 1
    end

    it "should delegate to its Floors steps" do
      @simulator.floor.expects(:steps).returns(1337)
      @simulator.steps.should == 1337
    end
  end
end