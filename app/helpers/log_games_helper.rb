module LogGamesHelper

  def all_users_not_user(id)
    User.where.not(id: id)
  end

  def opponent_name(id)
    opponent = User.select("email, name").where(id: id)
    opponent.map do |user_name|
      user_name.name
    end.join("").html_safe
  end

end
