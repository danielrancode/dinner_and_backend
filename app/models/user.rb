class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
  has_many :programs
  has_many :events, through: :programs
  has_many :restaurants, through: :programs
end
