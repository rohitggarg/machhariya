class RssFeedSubscription < ApplicationRecord
  belongs_to :user
  belongs_to :rss_feed
end
