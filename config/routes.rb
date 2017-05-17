Rails.application.routes.draw do
  #root 'x#y' sets the Default Page(localhost:3000) to the X Controller with Y action 
  root 'jobs#index'
  resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
