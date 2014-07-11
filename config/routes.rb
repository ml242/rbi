RbiApp::Application.routes.draw do

  get '/' => 'welcome#index', via: [:get]
  get '/index.html' => 'welcome#index', via: [:get]
  get '/about.html' => 'welcome#about', via: [:get]
  get '/contact.html' => 'welcome#contact', via: [:get]
  get '/downloads.html' => 'welcome#downloads', via: [:get]
  get '/florence.html' => 'welcome#florence', via: [:get]
  get '/gallery-dev.html' => 'welcome#gallery-dev', via: [:get]
  get '/masters-teachers-class' => 'welcome#masters-teachers-class', via: [:get]
  get '/registration.html' => 'welcome#registration', via: [:get]
  get '/sessions.html' => 'welcome#sessions', via: [:get]
  get '/success.html' => 'welcome#success', via: [:get]
  get '/summer2012.html' => 'welcome#summer2012', via: [:get]
  get '/summer2013.html' => 'welcome#summer2013', via: [:get]
  get '/taiwan.html' => 'welcome#taiwan', via: [:get]
  get '/videos.html' => 'welcome#videos', via: [:get]

  # This line mounts Refinery's routes at the root of your application.
  # This means, any requests to the root URL of your application will go to Refinery::PagesController#home.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Refinery relies on it being the default of "refinery"
  mount Refinery::Core::Engine, :at => '/'



  # match 'photos', to: 'photos#show', via: [:get, :post]

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
