require File.dirname(__FILE__) + '/../spec_helper'

describe Bug, "#move" do
  before(:each) do
    @bug = Factory.new_bug
  end
  
  it "should be able to move north" do
    move = @bug.move until move == :north
  end
  
  it "should be able to move south" do
    move = @bug.move until move == :south    
  end
  
  it "should be able to move east" do
    move = @bug.move until move == :east    
  end
  
  it "should be able to move west" do
    move = @bug.move until move == :west    
  end
  
  it "should be able to move northeast" do
    move = @bug.move until move == :northeast    
  end
  
  it "should be able to move northwest" do
    move = @bug.move until move == :northwest    
  end
  
  it "should be able to move southeast" do
    move = @bug.move until move == :southeast    
  end
  
  it "should be able to move southwest" do
    move = @bug.move until move == :southwest    
  end
end