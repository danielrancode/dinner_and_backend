Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get '/restaurants/search', to: 'restaurants#search'
      get '/events/search', to: 'events#search'
      get '/users', to: 'users#index'
      get '/users/:id', to: 'users#show'
      get '/events', to: 'events#index'
      get '/events/:id', to: 'events#show'
      get '/restaurants', to: 'restaurants#index'
      get '/restaurants/:id', to: 'restaurants#show'
      get '/programs', to: 'programs#index'
      get '/programs/:id', to: 'programs#show'
    end
  end


end
