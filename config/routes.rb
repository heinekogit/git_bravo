Rails.application.routes.draw do

  devise_for :users

    root 'routes#index'
    
    # 注意！！これが下記のresourceより先に書かれていないと、searchの検索語がidと認識されshowが呼ばれてしまう
    resources :routes do
      collection do
        get 'search'
      end
    end

    resources :routes do
      resources :images
    end
    
    
    resources :users

end
