class GameChannel < ApplicationCable::Channel
  def subscribed
    # ugly as fuck

    binding.irb
    game = current_user.games.last
    stream_for game
  end
end
