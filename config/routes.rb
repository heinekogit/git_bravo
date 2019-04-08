Rails.application.routes.draw do

  devise_for :users

    root 'routes#index'
    
    resources :routes
    resources :users

end
