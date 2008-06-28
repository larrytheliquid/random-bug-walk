class Bug  
  attr_reader :moves
  
  def initialize(moves)
    @moves = moves
  end
  
  def move
    moves[ rand(moves.size) ]
  end
end