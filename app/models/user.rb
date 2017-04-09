class User < ApplicationRecord
  has_many :social_sites
  has_many :rss_feeds, through: RssFeedSubscription

  def update_with_omniauth(auth)
  	SocialSite.create_or_update!(name: auth['provider'], user_identifier: auth['uid'], user: self, api_token: auth['credentials'].to_s)
  end

  def self.create_with_omniauth(auth)
    user = create! do |user|
      if auth['info']
         user.name = auth['info']['name'] || ""
      end
    end
  end
end
