Rails.application.routes.draw do

  resources :users do
    resources :happenings
  end

  resources :days do
    resources :happenings
  end

  root 'home#index'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # get    '/days/:id', to: 'days#show', :as => :day

end