class Restaurant < ApplicationRecord
  has_many :programs
  has_many :users, through: :programs
  has_many :events, through: :programs
end
