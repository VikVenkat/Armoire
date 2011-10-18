Armoire::Application.routes.draw do
  get "home/index"
  get 'home/shop' => 'home#shop', :as => 'shop'
  get 'home/list' => 'home#list', :as => 'list'

  resources :garments

  devise_for :users


  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "home#index"

  # See how all your routes lay out with "rake routes"

end
