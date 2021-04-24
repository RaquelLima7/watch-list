Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :show, :create, :new] do
    resources :bookmarks, only: [:show, :create, :new, :destroy]
  end
end
