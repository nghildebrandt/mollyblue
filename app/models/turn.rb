class Turn
  attr_accessor :player, :move

  def initialize(player, move)
    @player = player
    @move = move
  end
end
