class SocialSite < ApplicationRecord
  belongs_to :user
  after_initialize do |cp|
    self.extend name.capitalize.constantize
  end
end
