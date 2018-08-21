module GamesHelper
  def cell_line_class(top_left, direction, turns)
    turn = turns.find do |turn|
      turn.move == Move.from_direction(top_left, direction)
    end

    return if turn.nil?

    { '1': 'red', '2': 'blue' }[turn.player.to_s.to_sym]
  end
end
