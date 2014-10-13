json.array!(@debts) do |debt|
  json.extract! debt, :id, :payment_id, :user_id, :amount, :paid, :paid_date
  json.url debt_url(debt, format: :json)
end
