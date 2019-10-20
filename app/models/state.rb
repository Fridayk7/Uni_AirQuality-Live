class State < ApplicationRecord
  validates :name, :country, presence: true
end
