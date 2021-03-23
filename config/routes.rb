Rails.application.routes.draw do
  root 'pages#index'
  namespace :api do
    namespace :v1 do
      resources :airlines, param: :slug #slug will be used as default id instead of id in Db
      resources :reviews, only: [:create, :destroy]
    end  
  end
  # If a non-existed route is requested for,route back to index page
  get '*path', to: 'pages#index', via: :all
end
