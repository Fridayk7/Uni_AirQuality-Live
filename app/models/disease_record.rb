class DiseaseRecord < ApplicationRecord
  belongs_to :region, optional:true
end
