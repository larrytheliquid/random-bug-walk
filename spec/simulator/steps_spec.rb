require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Simulator, "#steps" do
    before(:each) do
      @simulator = Factory.new_simulator(:floor => Factory.new_floor)
    end
    
    it "should be 0 by default" do
      @simulator.steps.should == 0
    end

    it "should delegate to its Floors steps" do
      @simulator.floor.should_receive(:steps).and_return(1337)
      @simulator.steps.should == 1337
    end
  end
end