class Team < ApplicationRecord
  has_many :team_lists
  has_many :users, :through => :team_lists

end
