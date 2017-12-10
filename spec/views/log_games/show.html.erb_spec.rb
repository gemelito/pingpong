require 'rails_helper'

RSpec.describe "log_games/show", type: :view do
  before(:each) do
    @log_game = assign(:log_game, LogGame.create!(
      :user => nil,
      :opponent => 2,
      :yourscore => 3,
      :theirscore => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
