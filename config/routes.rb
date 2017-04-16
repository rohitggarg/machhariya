Machhariya::Application.routes.draw do
  resources :rss_feed_subscriptions

  resources :rss_feeds

  resources :social_sites, except: [:edit, :create, :new]

  resources :users

  root to: 'logins#index'

  get '/logins' => 'logins#index'
  
  get '/auth/:provider/callback' => 'logins#create'
  get '/signin/:provider' => 'logins#new', :as => :signin
  get '/signout' => 'logins#destroy', :as => :signout
  get '/auth/failure' => 'logins#failure'
end
