class BoardsController < ApplicationController
  layout false

  def show
    @width = 8
    @height = 8
    @turn = true
    @turns = [
      Turn.new(1, Move.new(Coord.new(4, 4), Coord.new(5, 5))),
      Turn.new(2, Move.new(Coord.new(5, 5), Coord.new(5, 4))),
      Turn.new(1, Move.new(Coord.new(5, 4), Coord.new(4, 4))),
    ]
  end
end
