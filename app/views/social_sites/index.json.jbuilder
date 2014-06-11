json.array!(@social_sites) do |social_site|
  json.extract! social_site, :id, :name, :api_token, :user_identifier, :user_id
  json.url social_site_url(social_site, format: :json)
end
