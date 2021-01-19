Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      get '/forecast', to: 'forecast#index'
      get '/backgrounds', to: 'background#index'
      post '/users', to: 'user#create'
      post '/sessions', to: 'session#create'
      post '/road_trip', to: 'road_trip#index'
      get '/yelp', to: 'yelp#index'
      get '/munchies', to: 'munchies#index'
    end
  end
end
