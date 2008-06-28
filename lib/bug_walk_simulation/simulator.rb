module BugWalkSimulation
  class Simulator
    attr_reader :floor, :bug, :maximum_steps
  
    def initialize(options = {})    
      @floor = Floor.new(:height => options[:height], :width => options[:width])
      @bug = Bug.new(:floor => floor, :location => floor.random_tile, :possible_moves => options[:possible_moves])
      @maximum_steps = options[:maximum_steps]
    end
  
    def steps
      @floor.steps
    end
  end
end