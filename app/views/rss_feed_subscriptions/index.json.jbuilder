json.array!(@rss_feed_subscriptions) do |rss_feed_subscription|
  json.extract! rss_feed_subscription, :id, :user_id, :rss_feed_id
  json.url rss_feed_subscription_url(rss_feed_subscription, format: :json)
end
