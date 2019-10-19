class Region < ApplicationRecord
  has_many :disease_records, dependent: :destroy
end
