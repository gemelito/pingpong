require 'rails_helper'

RSpec.describe "log_games/edit", type: :view do
  before(:each) do
    @log_game = assign(:log_game, LogGame.create!(
      :user => nil,
      :opponent => 1,
      :yourscore => 1,
      :theirscore => 1
    ))
  end

  it "renders the edit log_game form" do
    render

    assert_select "form[action=?][method=?]", log_game_path(@log_game), "post" do

      assert_select "input#log_game_user_id[name=?]", "log_game[user_id]"

      assert_select "input#log_game_opponent[name=?]", "log_game[opponent]"

      assert_select "input#log_game_yourscore[name=?]", "log_game[yourscore]"

      assert_select "input#log_game_theirscore[name=?]", "log_game[theirscore]"
    end
  end
end
