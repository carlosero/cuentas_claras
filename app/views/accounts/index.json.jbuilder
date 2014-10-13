json.array!(@accounts) do |account|
  json.extract! account, :id, :user_id, :bank, :account_type, :number
  json.url account_url(account, format: :json)
end
