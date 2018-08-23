class GamesController < ApplicationController
  def new
  end

  def create
    render :show
  end

  def show
    @game = Game.find(params[:id])
  end
end
