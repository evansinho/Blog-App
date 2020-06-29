Rails.application.routes.draw do
  root "welcome#index"
  get "/about", to: "welcome#about"
  get '/signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :articles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
