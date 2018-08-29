module GamesHelper
  def cell_line_classes(top_left, direction, turns)
    "cell-line #{direction} ".tap do |classes|
      turns.find do |turn|
        turn.move == Move.from_direction(top_left, direction)
      end.yield_self do |turn|
        classes << { '1': 'red', '2': 'blue' }[@game.turn] if turn
      end
    end
  end
end
