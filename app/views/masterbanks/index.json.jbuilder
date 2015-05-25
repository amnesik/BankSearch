json.array!(@masterbanks) do |masterbank|
  json.extract! masterbank, :id, :name, :description, :image
  json.url masterbank_url(masterbank, format: :json)
end
