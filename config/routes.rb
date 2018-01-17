Rails.application.routes.draw do

  devise_for :users

  get 'welcome/index'

  authenticated :user do 
    root "docs#index", as: "authenticated_root"
  end 


  root 'welcome#index'

  resources :docs

  resource :post_likes, only: [] do
    member do

      post :like
      post :unlike


    end
  end
  # post '/like' => 'post_likes#like', as: :post_like

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
