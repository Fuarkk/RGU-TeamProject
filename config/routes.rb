Rails.application.routes.draw do
  resources :managers
  resources :staff_types
  resources :extra_duties
  resources :contracts
  resources :departments
  resources :budgets
  resources :staff
  get 'home/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
