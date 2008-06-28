module BugWalkSimulation  
  class Bug  
    attr_reader   :floor, :location, :possible_moves, :number_of_moves, :moves_lifetime
    attr_accessor :goal

    def initialize(options = {})
      @floor             = options[:floor]
      @location          = options[:location]
      @possible_moves    = options[:possible_moves]
      @moves_lifetime    = options[:moves_lifetime]
      @goal              = options[:goal]      
      @number_of_moves   = 0
    end
    
    def walk
      loop { break unless move }
      number_of_moves
    end    
    
    def move
      unless dead? || has_achieved_goal?
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
    
    def think_of_move
      possible_moves[ rand(possible_moves.size) ]
    end
    
    def dead?
      number_of_moves >= moves_lifetime
    end
    
    def has_achieved_goal?
      return false unless goal.kind_of? Proc
      goal.call(self)
    end
  end
end