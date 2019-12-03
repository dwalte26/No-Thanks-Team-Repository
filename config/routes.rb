Rails.application.routes.draw do
  
  get 'sessions/create'
  get 'sessions/destroy'
  get 'welcome/index'
  resources :employee do
    resources :projects
  end
  resources :application
  resources :sessions, only: [:new, :create,:destroy]
  get 'signup', to: 'employee#new', as: 'new'
  get 'login', to: 'employee#index', as: 'Login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
