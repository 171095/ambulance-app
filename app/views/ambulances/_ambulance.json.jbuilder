json.extract! ambulance, :id, :latitude, :longitude, :city, :zipcode, :state, :country, :created_at, :updated_at
json.url ambulance_url(ambulance, format: :json)
