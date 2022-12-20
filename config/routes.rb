Rails.application.routes.draw do
  devise_for :users
#   root to: "pages#home"
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
#   root to: "lists#index"
#   resources :bookmarks, only: [:new, :create]
#   resources :reviews, only: :create
#   # Defines the root path route ("/")
#   # root "articles#index"
# end
# resources :bookmarks, only: :destroy
root to: "lists#index"
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy

end
