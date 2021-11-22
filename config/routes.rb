Rails.application.routes.draw do
  resources :postalcodes
  get 'postalcode/:code', to: 'postalcodes#getByCode'
  root 'welcome#index'
end
