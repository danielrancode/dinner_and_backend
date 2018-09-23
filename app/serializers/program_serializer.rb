class ProgramSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :restaurant, :event
end
