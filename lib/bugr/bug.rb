class Bug  
  attr_reader :moves
  
  def initialize(options = {})
    @moves = options[:moves]
  end
  
  def move
    moves[ rand(moves.size) ]
  end
end