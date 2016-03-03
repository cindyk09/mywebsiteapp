Rails.application.routes.draw do
  root "home#index"
  resources :projects, only: [:index, :new, :create, :show, :edit, :destroy]
  resources :admins, only: [:index, :new, :create, :show, :edit, :destroy]

end
