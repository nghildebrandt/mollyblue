Rails.application.routes.draw do
  root to: 'games#index'

  resources :games do
    resources :turns
  end
  resources :boards
end
