module Twitter
  extend ActiveSupport::Concern

  def data
    api_token
  end

  def set_token(auth)
    self.update_attributes(api_token: auth.to_yaml)
  end
end