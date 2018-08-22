class Turn < ActiveRecord::Base
  belongs_to :game

  def move
    @move ||= Move.new(Coord.new(first_x, first_y), Coord.new(last_x, last_y))
  end
end
