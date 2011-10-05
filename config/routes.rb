MUNsite::Application.routes.draw do
  
  devise_for :admins

  resources :user
  
  match "/index", :to => "home#index", :as => "home_index"
  match "/about", :to => "home#about" ,:as => "home_about"
  match "/executive_board_registrations" => "home#eb_registrations", :as => "eb_registrations"
  match "/executive_board" => "home#executive_board", :as => "executive_boards"
  match "/eb" => "home#eb", :as => "home_eb"
  match "/ip" => "home#ip", :as => "home_ip"
  match "/schedule" => "home#schedule", :as => "home_schedule"
  match "/key_dates" => "home#key_dates", :as => "home_key_dates"
  match "/conference_fees" => "home#conference_fees", :as => "home_conference_fees"
  match "/historic_ga" => "home#historic_ga", :as => "home_historic_ga"
  match "/un_security_council" => "home#unsc", :as => "home_unsc"
  match "/meet_the_team" => "home#meet_the_team", :as => "home_meet_the_team"
  match "/awards" => "home#awards", :as => "home_awards"
  match "/coming_soon" => "home#coming_soon", :as => "home_coming_soon"
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => "home#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
