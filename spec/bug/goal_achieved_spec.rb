require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Bug, "#has_achieved_goal?" do
    it "should be false when no goal function exists" do
      new_bug(:goal => nil).should_not have_achieved_goal
    end
    
    it "should be false when the goal function is false" do
      new_bug(:goal => lambda {|bug| false } ).should_not have_achieved_goal
    end        
    
    it "should be true whent the goal function is true" do
      new_bug(:goal => lambda {|bug| true } ).should have_achieved_goal
    end
    
    it "should yield the bug to the goal function" do
      bug = new_bug(:goal => lambda {|yielded_bug| yielded_bug.should == bug } )
      bug.has_achieved_goal?
    end
  end  
end