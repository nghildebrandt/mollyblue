class BoardsController < ApplicationController
  layout false

  def show
    @width = 8
    @height = 8
    @turn = true
    @moves = [
      { player: 1, start: [4, 4], end: [4, 5] },
      { player: 2, start: [4, 5], end: [5, 5] }
    ]
  end
end
