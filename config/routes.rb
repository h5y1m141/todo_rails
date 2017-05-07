Rails.application.routes.draw do
  resources :tasks
  resources :prefectures, only: [:index]
  
  namespace :api, default: { format: :json } do
    resources :prefectures, only: [:index]
  end
end
