module GamesHelper
  def cell_line_class(top_left, direction, moves)
    if rand < 0.1
      "red"
    elsif rand < 0.1
      "blue"
    end
  end
end
