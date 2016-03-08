Rails.application.routes.draw do

  resources :contact, only:[:index]
  resources :about, only:[:index]

  root "home#index"
  resources :projects
  resources :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'sessions' => 'sessions#new'
  patch 'projects/:id' => 'projects#update'
end
