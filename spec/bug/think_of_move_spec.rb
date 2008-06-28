require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Bug, "#think_of_move, with think_of_moves north, south, east, west, northeast, northwest, southeast, and southwest" do
    before(:each) do
      @bug = Factory.new_bug(:think_of_moves => [[-1, 0], [1, 0], [0, -1], [0, 1], [-1, -1], [-1, 1], [1, -1], [1, 1]])
      @timeout = 3
      srand(1337)
    end

    it "should be able to think_of_move north" do
      lambda do
        Timeout.timeout(@timeout) { think_of_move = @bug.think_of_move until think_of_move == [-1, 0] }      
      end.should_not raise_error
    end

    it "should be able to think_of_move south" do
      lambda do
        Timeout.timeout(@timeout) { think_of_move = @bug.think_of_move until think_of_move == [1, 0] }      
      end.should_not raise_error    
    end
    
    it "should be able to think_of_move west" do
      lambda do
        Timeout.timeout(@timeout) { think_of_move = @bug.think_of_move until think_of_move == [0, -1] }      
      end.should_not raise_error    
    end

    it "should be able to think_of_move east" do
      lambda do
        Timeout.timeout(@timeout) { think_of_move = @bug.think_of_move until think_of_move == [0, 1] }      
      end.should_not raise_error    
    end
    
    it "should be able to think_of_move northwest" do
      lambda do
        Timeout.timeout(@timeout) { think_of_move = @bug.think_of_move until think_of_move == [-1, -1] }      
      end.should_not raise_error    
    end

    it "should be able to think_of_move northeast" do
      lambda do
        Timeout.timeout(@timeout) { think_of_move = @bug.think_of_move until think_of_move == [-1, 1] }      
      end.should_not raise_error    
    end
    
    it "should be able to think_of_move southwest" do
      lambda do
        Timeout.timeout(@timeout) { think_of_move = @bug.think_of_move until think_of_move == [1, -1] }      
      end.should_not raise_error    
    end

    it "should be able to think_of_move southeast" do
      lambda do
        Timeout.timeout(@timeout) { think_of_move = @bug.think_of_move until think_of_move == [1, 1] }      
      end.should_not raise_error    
    end    
  end
end