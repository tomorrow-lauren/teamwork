class User < ApplicationRecord
  has_many :articles
  has_many :team_lists
  has_many :likes
  has_many :teams, :through => :team_lists

  has_secure_password

end
