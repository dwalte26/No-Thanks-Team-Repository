Rails.application.routes.draw do
  get 'welcome/index'
  resources :employee do
    resources :projects
  end
  resources :application
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
