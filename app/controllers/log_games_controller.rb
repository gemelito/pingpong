class LogGamesController < ApplicationController
  before_action :set_log_game, only: [:show, :edit, :update, :destroy]
  #before_action :difference_of_points, only: [:create]


  # GET /log_games
  def index
    @log_games = current_user.log_games.all
  end

  # GET /log_games/1
  def show
  end

  # GET /log_games/new
  def new
    @log_game = LogGame.new
  end

  # GET /log_games/1/edit
  def edit
  end

  # POST /log_games
  def create
    @log_game = current_user.log_games.new(log_game_params)

    if @log_game.save
      redirect_to log_games_path, notice: 'Log game was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /log_games/1
  def update
    if @log_game.update(log_game_params)
      redirect_to @log_game, notice: 'Log game was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /log_games/1
  def destroy
    @log_game.destroy
    redirect_to log_games_url, notice: 'Log game was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log_game
      @log_game = LogGame.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def log_game_params
      params.require(:log_game).permit(:user_id, :dateplayed, :opponent, :yourscore, :theirscore)
    end

    def difference_of_points
      LogGame.existe_winner?
    end

end
