json.extract! profile, :id, :name, :age, :twitter, :location, :created_at, :updated_at
json.url profile_url(profile, format: :json)