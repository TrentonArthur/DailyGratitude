Rails.application.routes.draw do
  devise_for :users
  root "entries#index"

  # Routes for the User resource:
  # CREATE
  get('/users/new', { :controller => 'users', :action => 'new' })
  get('/create_user', { :controller => 'users', :action => 'create' })

  # READ
  get('/users', { :controller => 'users', :action => 'index' })
  get('/users/:id', { :controller => 'users', :action => 'show' })

  # UPDATE
  get('/users/:id/edit', { :controller => 'users', :action => 'edit' })
  get('/update_user/:id', { :controller => 'users', :action => 'update' })

  # DELETE
  get('/delete_user/:id', { :controller => 'users', :action => 'destroy' })
  #------------------------------

  # Routes for the Share resource:
  # CREATE
  get('/shares/new', { :controller => 'shares', :action => 'new' })
  get('/create_share', { :controller => 'shares', :action => 'create' })

  # READ
  get('/shares', { :controller => 'shares', :action => 'index' })
  get('/shares/:id', { :controller => 'shares', :action => 'show' })

  # UPDATE
  get('/shares/:id/edit', { :controller => 'shares', :action => 'edit' })
  get('/update_share/:id', { :controller => 'shares', :action => 'update' })

  # DELETE
  get('/delete_share/:id', { :controller => 'shares', :action => 'destroy' })
  #------------------------------

  # Routes for the Entry resource:
  # CREATE
  get('/entries/new', { :controller => 'entries', :action => 'new' })
  get('/create_entry', { :controller => 'entries', :action => 'create' })

  # READ
  get('/entries', { :controller => 'entries', :action => 'index' })
  get('/entries/:id', { :controller => 'entries', :action => 'show' })

  # UPDATE
  get('/entries/:id/edit', { :controller => 'entries', :action => 'edit' })
  get('/update_entry/:id', { :controller => 'entries', :action => 'update' })

  # DELETE
  get('/delete_entry/:id', { :controller => 'entries', :action => 'destroy' })
  #------------------------------

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
