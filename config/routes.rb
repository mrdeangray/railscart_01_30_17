Rails.application.routes.draw do
  resources :projects do
    resources:tasks do 
      member do
      patch :mark_as_complete
      patch :mark_as_incomplete
    end
    end
  end

  get 'pages/practice1'

  get 'pages/practice2'
  get 'pages/gritty'

  devise_for :users
  get 'cart/index'

  get 'cart/clear'
  

  get 'cart/delete'
  
  get '/add/:id' => 'cart#add'
  
  post '/update_quantity/:id' => 'cart#update_quantity'

  get '/remove_item/:id/:qty' => 'cart#remove_item'

  resources :products

  resources :objectives do 
    member do
      get :mark_as_complete
      get :mark_as_incomplete
    end
    
    
      collection do
      get :drums
      get :guitar
      get :piano
      get :bass
      
      post :sort_by_date
      post :sort_by_name

      
    end
  end
  
  root 'objectives#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
