class User < ApplicationRecord
  has_many :social_sites
  has_many :rss_feeds, through: RssFeedSubscription

  def update_with_omniauth(auth)
    hash = { name: auth['provider'], user_identifier: auth['uid'], user: self }
    social_site = SocialSite.where(hash).first || SocialSite.create!(hash)
    social_site.set_token(auth['credentials'])
  end

  def self.create_with_omniauth(auth)
    user = create! do |user|
      if auth['info']
        user.name = auth['info']['name'] || ""
      end
    end
  end
end
