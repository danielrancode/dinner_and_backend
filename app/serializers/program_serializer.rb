class ProgramSerializer < ActiveModel::Serializer
  attributes :id, :user, :restaurant, :event
end
