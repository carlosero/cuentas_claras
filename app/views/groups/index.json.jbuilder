json.array!(@groups) do |group|
  json.extract! group, :id, :user_id, :description
  json.url group_url(group, format: :json)
end
