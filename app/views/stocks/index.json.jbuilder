json.array!(@stocks) do |stock|
  json.extract! stock, :id, :company
  json.url stock_url(stock, format: :json)
end
