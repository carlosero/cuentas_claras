json.array!(@friends) do |friend|
  json.extract! friend, :id, :user_id, :to
  json.url friend_url(friend, format: :json)
end
