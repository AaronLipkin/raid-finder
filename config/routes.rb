Rails.application.routes.draw do
  resources :klasses
  resources :ledgers
  resources :specs
  resources :expansions
  resources :raids
  resources :characters
  resources :groups

  resources :users do
    collection do
      post '/login', to: 'users#login'
      get '/currentuser', to: 'users#currentUser'
    end
  end

  resources :requests do
    collection do
      get '/accept/:id', to: 'requests#accept'
      get '/reject/:id', to: 'requests#reject'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
