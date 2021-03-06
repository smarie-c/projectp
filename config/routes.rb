Rails.application.routes.draw do

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  get '/' => 'home#index'

#tournoi rest
  get '/tournoi/create_view' => 'tournoi#create_view'
  post '/tournoi/create' => 'tournoi#create'
  get '/tournoi/index' => 'tournoi#index'
  get '/tournoi/show/:id' => 'tournoi#show'
  put '/tournoi/update' => 'tournoi#update'
  delete '/tournoi/delete' => 'tournoi#delete'

#phase rest
  post '/phase/create_view' => 'phase#create_view'
  post '/phase/create' => 'phase#create'
  get '/phase/index' => 'phase#index'
  get '/phase/show/:id' => 'phase#show'
  put '/phase/update' => 'phase#update'
  delete '/phase/delete' => 'phase#delete'

#phase ++
  get '/tournoi/phase/:id' => 'tournoi#index_by_tournoi_id'

#admin rest
  get '/admin/create_view' => 'admin#create_view'
  post '/admin/create' => 'admin#create'
  get '/admin/index' => 'admin#index'
  get '/admin/show/:id' => 'admin#show'
  put '/admin/update' => 'admin#update'
  delete '/admin/delete' => 'admin#delete'
#suscriber rest
  get '/suscriber/create_view' => 'suscriber#create_view'
  post '/suscriber/create' => 'suscriber#create'
  get '/suscriber/index' => 'suscriber#index'
  get '/suscriber/show/:id' => 'suscriber#show'
  put '/suscriber/update' => 'suscriber#update'
  delete '/suscriber/delete' => 'suscriber#delete'
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
