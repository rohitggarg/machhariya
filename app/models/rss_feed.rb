class RssFeed < ActiveRecord::Base
  has_many :users, through: RssFeedSubscription
end
