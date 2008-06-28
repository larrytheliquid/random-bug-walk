require File.dirname(__FILE__) + '/../spec_helper'

module BugWalkSimulation  
  describe Bug, "#move" do    
    describe "when dead" do
      before(:each) do
        @bug = new_bug(:moves_lifetime => 1)
        @bug.stubs(:number_of_moves).returns(1)
      end
      
      it "should be nil" do
        @bug.move.should be_nil
      end
      
      it "should not increment the number of moves" do
        lambda { @bug.move }.should_not change(@bug, :number_of_moves)
      end
      
      it "should not step on a tile" do
        @bug.floor.expects(:step_on_tile).never
        @bug.move
      end
    end
    
    describe "when goal has been achieved" do
      before(:each) do
        @bug = new_bug(:goal => lambda {|bug| true })
      end
      
      it "should be nil" do
        @bug.move.should be_nil
      end
      
      it "should not increment the number of moves" do
        lambda { @bug.move }.should_not change(@bug, :number_of_moves)
      end
      
      it "should not step on a tile" do
        @bug.floor.expects(:step_on_tile).never
        @bug.move
      end
    end
    
    describe "when the move thought of is not possible" do
      before(:each) do
        @bug = new_bug(:floor => new_floor(:height => 2, :width => 2), :location => [0, 0])
        @bug.stubs(:think_of_move).returns([0, -1], [-1, 0], [0, 1])
      end
      
      it "should continue thinking of new moves until a possible one is thought of" do
        @bug.expects(:think_of_move).returns([0, -1], [-1, 0], [0, 1])        
        @bug.move
      end
      
      it "should return the location of the first valid move thought of" do
        @bug.move.should == [0, 1]
      end
      
      it "should change location to the first valid move thought of" do
        @bug.move
        @bug.location.should == [0, 1]        
      end
    end
    
    describe "when the move thought of is possible" do
      before(:each) do
        @bug = new_bug(:floor => new_floor(:height => 2, :width => 2), :location => [0, 0])
        @bug.stubs(:think_of_move).returns([0, 1])
      end
      
      it "should think of a move" do
        @bug.expects(:think_of_move).returns([0, 1])        
        @bug.move
      end
      
      it "should increment the number of moves" do
        lambda { @bug.move }.should change(@bug, :number_of_moves).by(1)
      end
    
      it "should step on a tile" do        
        @bug.floor.expects(:step_on_tile).returns([0, 1])
        @bug.move
      end
      
      it "should return the location of the tile stepped on" do
        @bug.move.should == [0, 1]
      end
      
      it "should change location to the tile stepped on" do
        @bug.move
        @bug.location.should == [0, 1]        
      end
    end
  end
end