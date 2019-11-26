Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'welcome/index'
  resources :employee do
    resources :projects
  end
  resources :application
  resources :sessions, only: [:new, :create,:destroy]
  get 'signup', to: 'employee#new', as: 'new'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
