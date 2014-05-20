Rails.application.routes.draw do

  root 'coatroom#index'
  get 'coatroom/search' => 'coatroom#search'
  get '/dropoff/:id' => 'coatroom#dropoff'
  get '/confirmation/:id' => 'coatroom#confirmation'
  get 'sessions/new' => 'sessions#new', as: 'log_in_user'
  get 'sessions/new' => 'sessions#new', as: 'log_in_checker'

  post 'sessions' => 'sessions#create'
  get 'sessions/delete' => 'sessions#destroy'
  delete 'sessions' => 'sessions#destroy', as: 'log_out'

  get 'profiles' => 'profiles#index'
  resources :users
  resources :checkers
  resources :hold_records

#  Prefix Verb   URI Pattern                      Controller#Action
#             root GET    /                                coatroom#index
#  coatroom_search GET    /coatroom/search(.:format)       coatroom#search
#                  GET    /dropoff/:id(.:format)           coatroom#dropoff
#                  GET    /confirmation/:id(.:format)      coatroom#confirmation
#           log_in GET    /sessions/new(.:format)          sessions#new
#         sessions POST   /sessions(.:format)              sessions#create
#  sessions_delete GET    /sessions/delete(.:format)       sessions#destroy
#          log_out DELETE /sessions(.:format)              sessions#destroy
#         profiles GET    /profiles(.:format)              profiles#index
#            users GET    /users(.:format)                 users#index
#                  POST   /users(.:format)                 users#create
#         new_user GET    /users/new(.:format)             users#new
#        edit_user GET    /users/:id/edit(.:format)        users#edit
#             user GET    /users/:id(.:format)             users#show
#                  PATCH  /users/:id(.:format)             users#update
#                  PUT    /users/:id(.:format)             users#update
#                  DELETE /users/:id(.:format)             users#destroy
#         checkers GET    /checkers(.:format)              checkers#index
#                  POST   /checkers(.:format)              checkers#create
#      new_checker GET    /checkers/new(.:format)          checkers#new
#     edit_checker GET    /checkers/:id/edit(.:format)     checkers#edit
#          checker GET    /checkers/:id(.:format)          checkers#show
#                  PATCH  /checkers/:id(.:format)          checkers#update
#                  PUT    /checkers/:id(.:format)          checkers#update
#                  DELETE /checkers/:id(.:format)          checkers#destroy
#     hold_records GET    /hold_records(.:format)          hold_records#index
#                  POST   /hold_records(.:format)          hold_records#create
#  new_hold_record GET    /hold_records/new(.:format)      hold_records#new
# edit_hold_record GET    /hold_records/:id/edit(.:format) hold_records#edit
#      hold_record GET    /hold_records/:id(.:format)      hold_records#show
#                  PATCH  /hold_records/:id(.:format)      hold_records#update
#                  PUT    /hold_records/:id(.:format)      hold_records#update
#                  DELETE /hold_records/:id(.:format)      hold_records#destroy


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
