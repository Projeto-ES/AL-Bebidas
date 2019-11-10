Rails.application.routes.draw do
  resources :clientes
  get 'welcome/index'

  resources :pedidos
  resources :produtos
  resources :usuarios

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
