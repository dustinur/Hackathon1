Rails.application.routes.draw do

  root to: 'accounts#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :accounts do
    resources :posts
  end

end
