json.array!(@banks) do |bank|
  json.extract! bank, :id, :name, :description, :lat, :long, :image, :masterbank_id
  json.url bank_url(bank, format: :json)
end
