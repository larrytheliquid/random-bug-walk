require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Bug, "#move, with moves north, south, east, west, northeast, northwest, southeast, and southwest" do
    before(:each) do
      @bug = Factory.new_bug(:moves => [[-1, 0], [1, 0], [0, -1], [0, 1], [-1, -1], [-1, 1], [1, -1], [1, 1]])
      @timeout = 3
      srand(1337)
    end

    it "should be able to move north" do
      lambda do
        Timeout.timeout(@timeout) { move = @bug.move until move == [-1, 0] }      
      end.should_not raise_error
    end

    it "should be able to move south" do
      lambda do
        Timeout.timeout(@timeout) { move = @bug.move until move == [1, 0] }      
      end.should_not raise_error    
    end
    
    it "should be able to move west" do
      lambda do
        Timeout.timeout(@timeout) { move = @bug.move until move == [0, -1] }      
      end.should_not raise_error    
    end

    it "should be able to move east" do
      lambda do
        Timeout.timeout(@timeout) { move = @bug.move until move == [0, 1] }      
      end.should_not raise_error    
    end
    
    it "should be able to move northwest" do
      lambda do
        Timeout.timeout(@timeout) { move = @bug.move until move == [-1, -1] }      
      end.should_not raise_error    
    end

    it "should be able to move northeast" do
      lambda do
        Timeout.timeout(@timeout) { move = @bug.move until move == [-1, 1] }      
      end.should_not raise_error    
    end
    
    it "should be able to move southwest" do
      lambda do
        Timeout.timeout(@timeout) { move = @bug.move until move == [1, -1] }      
      end.should_not raise_error    
    end

    it "should be able to move southeast" do
      lambda do
        Timeout.timeout(@timeout) { move = @bug.move until move == [1, 1] }      
      end.should_not raise_error    
    end    
  end
end