class StateSerializer < ActiveModel::Serializer
  attributes :id, :device, :os, :memory, :storage
  has_one :bug
end
