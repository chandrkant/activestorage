Rails.application.routes.draw do
  resources :ry_uploders
  root to: 'ry_uploders#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
