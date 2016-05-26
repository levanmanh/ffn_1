class Season < ActiveRecord::Base
  has_many :season_teams
  has_many :matches
  has_many :posts
  has_many :team, through: :season_teams 

  validates :name, presence: true, length: {maximum: 50}
  validates :description, presence:  true, length: {maximum: 100}
  validates :number_of_team, presence: true, numericality:
    {only_integer: true, greater_than: 0}
  validates :number_of_match, presence: true, numericality:
    {only_integer: true, greater_than: 0}
end
