Rails.application.routes.draw do
  resources :competitions
  resources :results
  resources :judges
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
