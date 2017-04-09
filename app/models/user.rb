class User < ApplicationRecord
  has_many :social_sites
  has_many :rss_feeds, through: RssFeedSubscription
end
