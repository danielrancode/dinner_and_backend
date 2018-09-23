class ProgramSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :restaurant_id, :event_id
end
