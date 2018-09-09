class Event < ApplicationRecord
  has_many :programs
  has_many :users, through: :programs
  has_many :restaurants, through: :programs
end
