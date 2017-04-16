module Facebook
  extend ActiveSupport::Concern

  def data
    facebook = Koala::Facebook::API.new(YAML.load(api_token)['access_token'])
    fields = %w(fitness.runs fitness.walks fitness.bikes
                events
                name picture gender updated_time
                age_range
                timezone locale hometown location work)
    facebook.get_object("me/tagged_places")
    facebook.get_object("me?fields=#{fields.join(',')}")
  end

  def set_token(auth)
    token = auth.token
    oauth = Koala::Facebook::OAuth.new(Rails.application.secrets['facebook']['omniauth_provider_key'],
                          Rails.application.secrets['facebook']['omniauth_provider_secret'])
    self.update_attributes(api_token: oauth.exchange_access_token_info(token).to_yaml)
  end
end