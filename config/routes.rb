Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    
    
      resources :users, only: [:index, :show, :create, :edit, :update]  do
        resources :stores, only:[:create] 
      end 
      resources :comments, only:[:index, :create, :show, :edit, :update, :destroy]
      resource  :session, only: [:create, :destroy, :show]
      resources :products, only:[:index, :create, :show, :edit, :update, :destroy]
      resources :stores, only:[:show, :edit, :update]
      resources :carts, only:[ :index, :create, :show, :edit, :update, :destroy]
      resources :orderlists, only:[ :index, :create, :show, :edit, :update, :destroy]
      resources :ratings, only:[ :index, :create, :show, :edit, :update, :destroy]
      get '/search', :to => 'searchs#index', :as => 'search_name' 

      get '/category', :to => 'searchs#index', :as => 'search_category'
     
  end
 

  root "static_pages#root"
end
