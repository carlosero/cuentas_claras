json.array!(@payments) do |payment|
  json.extract! payment, :id, :user_id, :group_id, :amount, :description
  json.url payment_url(payment, format: :json)
end
