module HomeHelper

  def Getscore(id)
    score = LogGame.joins(:user).where("users.id" => id).sum("log_games.yourscore")
  end

  def Gamesplayed(id)
    score = LogGame.joins(:user).where("users.id" => id).size
  end

end
