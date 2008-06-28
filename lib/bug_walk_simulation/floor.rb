module BugWalkSimulation  
  class Floor
    attr_reader :tiles

    def initialize(options = {})
      @tiles = Array.new options[:height], Array.new(options[:width], 0)
    end

    def height
      tiles.size
    end

    def width
      tiles.first.size
    end
    
    def step_on(i, j)
      tiles[i][j] += 1 rescue nil
    end
  end
end