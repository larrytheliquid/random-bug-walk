class Floor
  attr_reader :tiles
  
  def initialize(options = {})
    @tiles = Array.new options[:height], Array.new(options[:width], 0)
  end
  
  def height
    tiles.size
  end
  
  def width
    tiles.first.size
  end
end