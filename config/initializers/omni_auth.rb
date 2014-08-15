Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, Settings.first.twitter_consumer_id, Settings.first.twitter_consumer_secret
end