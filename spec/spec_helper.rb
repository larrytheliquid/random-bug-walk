require File.dirname(__FILE__) + '/../lib/bugr'

class Factory
  class << self
    def new_bug
      Bug.new([:north, :south, :east, :west, :northeast, :northwest, :southeast, :southwest])
    end
  end
end