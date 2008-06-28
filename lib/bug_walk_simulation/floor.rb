module BugWalkSimulation  
  class Floor
    attr_reader :tiles

    def initialize(options = {})
      @tiles = (1..options[:height]).map{|row| (1..options[:width]).map{|tile| 0 } }
    end

    def height
      tiles.size
    end

    def width
      tiles.first.size
    end
    
    def steps
      tiles.inject(0) {|sum, row| sum + row.inject(0) {|row_sum, tile_steps| row_sum + tile_steps } }
    end
    
    def explored?
      tiles.all? {|row| !row.include?(0) }
    end
    
    def step_on(i, j)
      tiles[i][j] += 1 rescue nil
    end
  end
end