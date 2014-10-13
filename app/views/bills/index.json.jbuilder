json.array!(@bills) do |bill|
  json.extract! bill, :id, :debt_id, :amount
  json.url bill_url(bill, format: :json)
end
