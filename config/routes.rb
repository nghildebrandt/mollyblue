Rails.application.routes.draw do
  root to: 'games#new'

  resources :games do
    resources :turns
  end
  resources :boards
end
