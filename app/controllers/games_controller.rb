class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def show
    @game = Game.find(params[:id])
  end

  def index
    if params[:query].present?
      sql_query = " \
        games.title ILIKE :query \
        OR games.category ILIKE :query \
        OR games.platform ILIKE :query \
        OR users.address ILIKE :query \
      "
      @games = Game.joins(:user).where(sql_query, query: "%#{params[:query]}%")
      @games.each do |game|
        @users = User.where("users.id = #{game.user_id}")
      end
    else
      @games = Game.all.sort_by(&:created_at).reverse
      @users = User.all
    end
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user })
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
