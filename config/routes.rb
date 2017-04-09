Machhariya::Application.routes.draw do
  resources :rss_feed_subscriptions

  resources :rss_feeds

  resources :social_sites

  resources :users

  root to: 'users#index'

  get '/auth/:provider/callback' => 'logins#create'
  get '/signin/:provider' => 'logins#new', :as => :signin
  get '/signout' => 'logins#destroy', :as => :signout
  get '/auth/failure' => 'logins#failure'
  get '/details' => 'logins#show'
end
