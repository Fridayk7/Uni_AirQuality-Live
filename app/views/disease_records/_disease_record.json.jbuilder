json.extract! disease_record, :id, :year, :region, :lc, :copd, :bronch, :asthma, :created_at, :updated_at
json.url disease_record_url(disease_record, format: :json)
