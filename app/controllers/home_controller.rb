class HomeController < ApplicationController
  def index
    @players = User.all
  end

  def history
  end

  def log
  end

end
