Machhariya::Application.routes.draw do
  resources :rss_feed_subscriptions

  resources :rss_feeds

  resources :social_sites

  resources :users

  root to: 'welcome#index'
  get '/auth/twitter/callback', to: 'logins#create', as: 'callback'
  get '/auth/twitter/failure', to: 'logins#error', as: 'failure'
  get '/twitter/profile', to: 'logins#show', as: 'show'
  delete '/twitter/signout', to: 'logins#destroy', as: 'signout'

  match 'facebooks/index'
  match 'facebooks/login'
  match 'facebooks/logout'
  match 'facebooks/callback'
  match 'facebooks/menu'
  root :to => "facebooks#index"
end
