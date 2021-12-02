Rails.application.routes.draw do
  # resources :usuarios
  resources :proveedores
  resources :empleados
  resources :herramienta_maquinaria
  resources :obras_proyectos
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :users
  resources :users, only:[:index, :show]
  root to: "home#index"
  
end
