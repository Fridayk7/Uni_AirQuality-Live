class Region < ApplicationRecord
  validates :name, :population, :area, presence: true
  has_many :disease_records, dependent: :destroy
end
