class Turn < ActiveRecord::Base
  belongs_to :game

  def move
    @move ||= Move.new(Coord.new(first_x, first_y), Coord.new(last_x, last_y))
  end

  def initialize(args)
    super(
      first_x: args[:move].first.x,
      first_y: args[:move].first.y,
      last_x: args[:move].last.x,
      last_y: args[:move].last.y,
      player: args[:player]
    )
  end
end
