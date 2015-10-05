json.array!(@bookmarks) do |bookmark|
  json.extract! bookmark, :id, :title, :bookmarkable_type, :bookmarkable_id, :user_id
  json.url bookmark_url(bookmark, format: :json)
end
