Rails.application.routes.draw do
  get 'historical/index'
  get 'historical/result'
  resources :disease_records
  resources :cities
  resources :states
  resources :countries
  get 'airquality/history'
  get 'airquality/safety'
  get 'airquality/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'airquality#index'
end
