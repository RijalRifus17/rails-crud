Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  namespace :admin do
    resources :main, only: [:index]

    resources :actors, :films, :customers, :addresses do
      member do
        get :delete
      end    
    end

  end

  match ':controller(/:action(/:id))', :via => [:get, :post]



end
