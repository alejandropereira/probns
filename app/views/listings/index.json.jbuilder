json.array!(@listings) do |listing|
  json.extract! listing, :id, :title, :description, :feature_image, :state
  json.url listing_url(listing, format: :json)
end
