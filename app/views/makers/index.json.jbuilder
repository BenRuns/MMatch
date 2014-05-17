json.array!(@makers) do |maker|
  json.extract! maker, :id, :name, :location, :space, :tools, :skills, :bio
  json.url maker_url(maker, format: :json)
end
