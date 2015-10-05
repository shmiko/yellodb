json.array!(@tracks) do |track|
  json.extract! track, :id, :title, :artist_id, :track_base_id, :length, :purchase_date
  json.url track_url(track, format: :json)
end
