Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook,
        Rails.application.secrets['facebook']['omniauth_provider_key'],
        Rails.application.secrets['facebook']['omniauth_provider_secret'],
        {:scope => ['user_location',
                    'user_hometown',
                    'user_actions.fitness',
                    'user_work_history',
                    'user_tagged_places']}
  provider :twitter,
        Rails.application.secrets['twitter']['omniauth_provider_key'],
        Rails.application.secrets['twitter']['omniauth_provider_secret']
end