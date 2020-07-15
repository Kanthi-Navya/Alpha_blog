Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
    root 'pages#home'
    get 'about', to: 'pages#about'
    # get 'articles', to: 'articles#show'
    resources :articles
    get 'signup', to: 'users#new'
    resources :users, except: [:new]
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    #post 'login', to: 'sessions#new'
end