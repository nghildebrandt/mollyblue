class GameChannel < ApplicationCable::Channel
  def subscribed
    stream_for('1')
  end

  def fuck
    binding.irb
  end
end
