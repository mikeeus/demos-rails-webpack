Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'pages#index'
  get '404', to: 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :posts, only: :index
    end
  end
end
