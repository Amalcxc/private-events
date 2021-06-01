Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :events
  resources :users, only: %i[index show]
  resources :events
  resources :lists do
    member do
      post :attend
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  match '/all_events', to: 'events#index', via: :get
end
