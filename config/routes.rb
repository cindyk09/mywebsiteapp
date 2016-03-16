Rails.application.routes.draw do

  resources :contacts
  resources :about, only:[:index]

  root "home#index"
  resources :projects
  resources :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'dashboard', to: "dashboard#index", as: "dashboard"

end
