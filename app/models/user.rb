class User < ApplicationRecord
  has_many :programs
  has_many :events, through: :programs
  has_many :restaurants, through: :programs
end
