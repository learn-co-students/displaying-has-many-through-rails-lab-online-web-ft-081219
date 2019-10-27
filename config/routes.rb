Rails.application.routes.draw do
  resources :doctors, only: [:show]
  resources :patients, only: [:index, :show]
  resources :appointments, only: [:show]
end
