class Coord
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def ==(o)
    @x == o.x && @y == o.y
  end

  def right
    Coord.new(@x + 1, @y)
  end

  def down
    Coord.new(@x, @y + 1)
  end
end
