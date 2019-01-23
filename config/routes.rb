Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get '/restaurants/search', to: 'restaurants#search'
      get '/restaurants/autocomplete', to: 'restaurants#autocomplete'
      get '/events/search', to: 'events#search'
      post '/login', to: 'auth#create'
      get '/user', to: 'users#find'
      resources :users do
        resources :programs
      end
    end
  end

end


# get '/users', to: 'users#index'
# post '/users', to: 'users#create'
# get '/users/:id', to: 'users#show'
# post '/login', to: 'auth#create'
# get '/events', to: 'events#index'
# get '/events/:id', to: 'events#show'
# get '/restaurants', to: 'restaurants#index'
# get '/restaurants/:id', to: 'restaurants#show'
# get '/programs', to: 'programs#index'
# post '/programs', to: 'programs#create'
# get '/programs/:id', to: 'programs#show'
