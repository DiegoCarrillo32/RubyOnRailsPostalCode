Rails.application.routes.draw do
  resources :postalcodes
  get 'postalcode/', to: 'postalcodes#getbycode'
  resources :users
  get 'user/', to: 'users#signin'
  get 'login/', to: 'welcome#index'


  root 'postalcodes#index'
end
