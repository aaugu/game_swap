class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def show
    @game = Game.find(params[:id])
  end

  def index
    @games = Game.all
    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user

    if @game.save
      redirect_to games_path
    else
      render "new"
    end
  end

  private

  def game_params
    params.require(:game).permit(:title, :description, :category, :price_per_day, :release_year, :platform, :image)
  end
end
