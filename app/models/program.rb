class Program < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  belongs_to :event
end
