class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @game = Game.find(params[:id])
  end

  def new
    @categories = ["Action", "Action-Adventure", "Adventure", "Puzzle", "Role-playing", "Simulation", "Strategy", "Sport", "Sandbox"]
    @console_collection = ["Atari", "Super Nintendo", "DreamCast", "Sega", "Game Boy", "Nintendo DS", "Switch", "PC", "XBox", "Xbox 360", "PSVita", "PSOne", "PS2", "PS3", "PS4", "PS5"]
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user

    if @game.save
      redirect_to root_path
    else
      render "new"
    end
  end

  private

  def game_params
    params.require(:game).permit(:title, :description, :category, :price_per_day, :release_year, :platform, :image)
  end
end
