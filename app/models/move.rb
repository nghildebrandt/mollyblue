class Move
  attr_accessor :first, :last

  def initialize(first, last)
    @first = first
    @last = last
  end

  def ==(o)
    @first == o.first && @last == o.last || @first == o.last && @last == o.first
  end

  def self.from_direction(top_left, direction)
    case(direction)
      when :horizontal
        return Move.new(top_left, top_left.right)
      when :vertical
        return Move.new(top_left, top_left.down)
      when :tangent
        return Move.new(top_left, top_left.right.down)
      when :secant
        return Move.new(top_left.down, top_left.right)
    end
  end
end
