module BugWalkSimulation
  class Simulator
    attr_reader :floor, :bug
  
    def initialize(options = {})    
      @floor         = Floor.new(:height => options[:height], :width => options[:width])
      @bug           = Bug.new(
                        :floor => floor, :location => options[:location] || floor.random_tile, 
                        :possible_moves => options[:possible_moves], :moves_lifetime => options[:moves_lifetime],
                        :goal => options[:goal]
                      )
      floor.step_on_tile(@bug.location)
    end
    
    def simulate
      bug.walk
    end
  
    def steps
      @floor.steps
    end
  end
end