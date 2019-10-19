Rails.application.routes.draw do

  resources :average_regions
  resources :region_averageregions
  resources :regions
  get 'historical/index'
  get 'historical/result'

  namespace :api do
    namespace :v1 do
      resources :disease_records
    end
  end

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
