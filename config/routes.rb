Rails.application.routes.draw do
  resources :vacancies

  get 'education/contact'

  get 'education/kg'

  get 'education/outside'

  root to: 'visitors#index'
  get 'products/:id', to: 'products#show', :as => :products
  devise_for :users
  resources :users
end
