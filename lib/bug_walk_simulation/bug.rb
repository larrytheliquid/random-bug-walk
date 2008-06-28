module BugWalkSimulation  
  class Bug  
    attr_reader :floor, :location, :possible_moves, :number_of_moves, :moves_lifetime

    def initialize(options = {})
      @floor             = options[:floor]
      @location          = options[:location]
      @possible_moves    = options[:possible_moves]
      @moves_lifetime    = options[:moves_lifetime]
      @number_of_moves   = 0
    end

    def think_of_move
      possible_moves[ rand(possible_moves.size) ]
    end
    
    def move
      unless number_of_moves >= moves_lifetime
        thought_of_move = think_of_move
        tile = [location.first + thought_of_move.first, location.last + thought_of_move.last]
        if floor.step_on_tile tile
          @number_of_moves += 1        
          @location = tile
        else
          move
        end
      end
    end
  end
end