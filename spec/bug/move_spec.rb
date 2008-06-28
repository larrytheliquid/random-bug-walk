require File.dirname(__FILE__) + '/../spec_helper'

describe Bug, "#move, with moves north, south, east, west, northeast, northwest, southeast, and southwest" do
  before(:each) do
    @bug = Factory.new_bug(:moves => [:north, :south, :east, :west, :northeast, :northwest, :southeast, :southwest])
    @timeout = 3
    srand(1337)
  end
  
  it "should be able to move north" do
    lambda do
      Timeout.timeout(@timeout) { move = @bug.move until move == :north }      
    end.should_not raise_error
  end
  
  it "should be able to move south" do
    lambda do
      Timeout.timeout(@timeout) { move = @bug.move until move == :south }      
    end.should_not raise_error    
  end
  
  it "should be able to move east" do
    lambda do
      Timeout.timeout(@timeout) { move = @bug.move until move == :east }      
    end.should_not raise_error    
  end
  
  it "should be able to move west" do
    lambda do
      Timeout.timeout(@timeout) { move = @bug.move until move == :west }      
    end.should_not raise_error    
  end
  
  it "should be able to move northeast" do
    lambda do
      Timeout.timeout(@timeout) { move = @bug.move until move == :northeast }      
    end.should_not raise_error    
  end
  
  it "should be able to move northwest" do
    lambda do
      Timeout.timeout(@timeout) { move = @bug.move until move == :northwest }      
    end.should_not raise_error    
  end
  
  it "should be able to move southeast" do
    lambda do
      Timeout.timeout(@timeout) { move = @bug.move until move == :southeast }      
    end.should_not raise_error    
  end
  
  it "should be able to move southwest" do
    lambda do
      Timeout.timeout(@timeout) { move = @bug.move until move == :southwest }      
    end.should_not raise_error    
  end
end