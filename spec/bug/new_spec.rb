require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Bug, ".new" do
    it "should be settable" do
      Factory.new_bug(:location => [3, 4]).location.should == [3, 4]
    end        
  end
end