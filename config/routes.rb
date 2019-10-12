Rails.application.routes.draw do
  get 'airquality/history'
  get 'airquality/safety'
  get 'airquality/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'airquality#index'
end
