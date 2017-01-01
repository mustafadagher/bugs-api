class State < ApplicationRecord
  belongs_to :bug

  validates_presence_of :os, :device, :memory, :storage
  validates_numericality_of :memory, :storage
end
