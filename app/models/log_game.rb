class LogGame < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :opponent, :yourscore,
                        :theirscore, :dateplayed, :user
  validates :yourscore, :theirscore, numericality: { greater_than: 0}
  validates :yourscore, :theirscore, numericality: { less_than_or_equal_to: 21}
  validate :verify, on: :create

  def verify
    if (theirscore > yourscore)
      is_opponent_winner
    else
      is_self_winner
    end
  end

  def is_opponent_winner
    if (theirscore - yourscore) != 2
      errors[:base] << 'There is a margin of difference to be able to win the game'
    end
  end

  def is_self_winner
    if (yourscore - theirscore) != 2
      errors[:base] << 'There is a margin of difference to be able to win the game'
    end
  end

end
