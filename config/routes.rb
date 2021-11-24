Rails.application.routes.draw do
  resources :empleados
  resources :herramienta_maquinaria
  resources :obras_proyectos
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"
  
end
