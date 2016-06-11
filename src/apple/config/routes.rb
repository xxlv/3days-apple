Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'home#index'

  resources :users
  resources :questions

  get 'login'=>'sessions#login'
  get 'hot' =>'home#hot'
  get 'me'=>'home#me'
  get 'edit_me'=>'users#edit_me'
  get 'my_qcode'=>'users#my_qcode'
  get 'my_ask'=>'home#my_ask'
  get 'ask_list'=>'home#ask_list'
  get 'tutor'=>'home#tutor'
  get 'pay_for_ask'=>'home#pay_for_ask'


  # post
  post "updte_user"=>'users#update'
  post "update_me"=>'home#update_me'
  post 'login_attempt'=>'sessions#login_attempt'
  post 'pay_for_ask'=>'home#pay_for_ask'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
    # match ':controller(/:action(/:id))'






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
