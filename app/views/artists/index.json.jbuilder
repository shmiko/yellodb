json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :picture, :content_type
  json.url artist_url(artist, format: :json)
end
