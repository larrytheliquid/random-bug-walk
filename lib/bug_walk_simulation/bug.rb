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
  end
end