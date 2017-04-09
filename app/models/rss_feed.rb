class RssFeed < ApplicationRecord
  has_many :users, through: RssFeedSubscription
end
