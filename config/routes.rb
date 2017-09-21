Rails.application.routes.draw do
  resources :klasses
  resources :ledgers
  resources :requests
  resources :specs
  resources :expansions
  resources :raids
  resources :characters
  resources :groups

  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
