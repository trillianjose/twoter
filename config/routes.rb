Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:show] do
    member do
      get :following, :followers
      post :follow, controller: 'relationships'
      post :unfollow, controller: 'relationships'
    end
  end
  resources :tweeets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tweeets#index"
end
