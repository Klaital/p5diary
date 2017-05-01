Rails.application.routes.draw do
  resources :calendar_days
  resources :social_stats
  resources :confidants
  resources :calendar_events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#about'

  # Static Pages
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  # User Handling
  resources :users
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'

  get '/login',    to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/calendar',  to: 'calendar_events#timeline'
end
