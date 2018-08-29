class GamesController < ApplicationController
  include GamesHelper

  def index
    @games = Game.all
    User.create
  end

  def create
    game = Game.create(users: [@user])

    redirect_to game
  end

  def show
    @game = Game.find(params[:id])
  end
end
