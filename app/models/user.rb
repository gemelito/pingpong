class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :trackable, :validatable
  validates_presence_of :name
  validates :name, length: { minimum: 5 }
  has_many :log_games

end
