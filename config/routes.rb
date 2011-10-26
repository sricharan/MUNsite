MUNsite::Application.routes.draw do
  
  devise_for :admins

  resources :user
  
  match "/index", :to => "home#index", :as => "home_index"
  match "/executive_board_registrations" => "home#eb_registrations", :as => "eb_registrations"
  match "/executive_board" => "home#executive_board", :as => "executive_boards"
  match "/eb" => "home#eb", :as => "home_eb"
  match "/ip" => "home#ip", :as => "home_ip"
  match "/delegate_registrations" => "home#delegate_registrations", :as => "home_delegate_registrations"
  match "/schedule" => "home#schedule", :as => "home_schedule"
  match "/key_dates" => "home#key_dates", :as => "home_key_dates"
  match "/conference_fees" => "home#conference_fees", :as => "home_conference_fees"
  match "/historic_ga" => "home#historic_ga", :as => "home_historic_ga"
  match "/un_security_council" => "home#unsc", :as => "home_unsc"
  match "/meet_the_team" => "home#meet_the_team", :as => "home_meet_the_team"
  match "/awards" => "home#awards", :as => "home_awards"
  match "/coming_soon" => "home#coming_soon", :as => "home_coming_soon"
  match "/successful_registration" => "home#successful_registration", :as => "successful_registration"
  match "/successful_updation" => "home#successful_updation", :as => "successful_updation"
  match "/what_is_iitkgpmun" => "home#what_is_iitkgpmun", :as => "home_what_is_iitkgpmun"
  match "/why_iitkgpmun", :to => "home#why_iitkgpmun" ,:as => "home_why_iitkgpmun"
  match "/team", :to => "home#team" ,:as => "home_team"
  match "/keynote_speaker", :to => "home#keynote_speaker" ,:as => "home_keynote_speaker"
  match "/payment_options", :to => "home#payment_options" ,:as => "home_payment_options"
  match "/study_guides", :to => "home#study_guides" ,:as => "home_study_guides"
  match "/useful_links", :to => "home#useful_links" ,:as => "home_useful_links"
  match "/conference_rules", :to => "home#conference_rules" ,:as => "home_conference_rules"
  match "/contact_us", :to => "home#contact_us" ,:as => "home_contact_us"
  match "/delegate" => "home#delegate", :as => "delegates"
  match "/travel_planning", :to => "home#travel_planning" ,:as => "home_travel_planning"
  match "/various_cities_to_kgp", :to => "home#various_cities_to_kgp" ,:as => "home_various_cities_to_kgp"
  match "/various_cities_to_kolkata", :to => "home#various_cities_to_kolkata" ,:as => "home_various_cities_to_kolkata"
  
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
