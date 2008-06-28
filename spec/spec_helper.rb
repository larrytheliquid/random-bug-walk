require File.dirname(__FILE__) + '/../lib/bugr'

class Factory
  class << self
    def new_bug(moves = nil)
      Bug.new(moves || [:north, :south, :east, :west, :northeast, :northwest, :southeast, :southwest])
    end
  end
end