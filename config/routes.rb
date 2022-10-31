Rails.application.routes.draw do
  resources :courses , only: [:show] do
    resources :exercises, only:[:new, :create]
  end

  
  resources :exercises, except:[:new, :create]
  resources :courses, except: [:show, :new]
  get "new-course", to:"courses#new"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "courses#index"
end
