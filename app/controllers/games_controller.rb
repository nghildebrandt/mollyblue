class GamesController < ApplicationController
  include GamesHelper

  def index
    @games = Game.all
  end

  def create
    @game = Game.create
    @game.join(@user)

    render action: show
  end

  def show
    @game = Game.find(params[:id])
    @game.join(@user)
  end
end
