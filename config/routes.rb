Rails.application.routes.draw do

  devise_for :users

    root 'routes#index'
    
    resources :routes do
      resources :images
    end
    
    resources :users

end
