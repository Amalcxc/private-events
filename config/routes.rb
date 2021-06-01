Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :events
  resources :events 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  match '/all_events', to: 'events#index', via: :get
  post 'attend_list', to: 'lists#attend', as: 'attend'
end
