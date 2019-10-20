class City < ApplicationRecord
  validates :name, :state, :country,  presence: true
end
