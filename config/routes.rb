Rails.application.routes.draw do
  namespace :admin do
      resources :pick_list_items
      resources :pick_lists
      resources :items
      resources :categories

      root to: "categories#index"
    end
  root 'public#index'
  get '/client', to: "client#form"
  post '/client', to: "client#submit"
  get '/client/:id', to: "client#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
