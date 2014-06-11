class RssFeedSubscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :rss_feed
end
