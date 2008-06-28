module BugWalkSimulation  
  class Bug  
    attr_reader :floor, :location, :moves

    def initialize(options = {})
      @floor    = options[:floor]
      @location = options[:location]
      @moves    = options[:moves]
    end

    def move
      moves[ rand(moves.size) ]
    end
  end
end