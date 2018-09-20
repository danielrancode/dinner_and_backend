class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password, :programs
end
