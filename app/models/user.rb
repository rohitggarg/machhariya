class User < ActiveRecord::Base
  has_many :social_sites
  has_many :rss_feeds, through: RssFeedSubscription
end
