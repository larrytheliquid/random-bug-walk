class Bug
  MOVES = [:north, :south, :east, :west, :northeast, :northwest, :southeast, :southwest]
  
  def move
    MOVES[ rand(MOVES.size) ]
  end
end