class DiseaseRecord < ApplicationRecord
    validates :year, :region, :lc , :copd , :bronch, :asthma, presence: true
  belongs_to :region, optional:true
end
