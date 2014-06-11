json.array!(@users) do |user|
  json.extract! user, :id, :name, :gcm_key, :apns_key
  json.url user_url(user, format: :json)
end
