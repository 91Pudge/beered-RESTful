json.extract! beer_item, :id, :beer_name, :brewery, :description, :ibu, :created_at, :updated_at
json.url beer_item_url(beer_item, format: :json)
