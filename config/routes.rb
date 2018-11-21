Rails.application.routes.draw do
  resources :food_reviews
  resources :foods do
    resources :comments
  end
  resources :users
  #get 'welcome/index'
  match ':controller(/:action(/:id))', :via => :get
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
