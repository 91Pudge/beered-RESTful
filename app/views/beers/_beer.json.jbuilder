json.extract! beer, :id, :beer_name, :Brewery, :Description, :IBU, :created_at, :updated_at
json.url beer_url(beer, format: :json)
