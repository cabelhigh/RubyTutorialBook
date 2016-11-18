json.extract! game, :id, :name, :description, :category, :created_at, :updated_at
json.url game_url(game, format: :json)