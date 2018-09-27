Rails.application.routes.draw do
  resources :artists
  resources :songs
  resources :songs, only: [:show, :index] do
    resources :artists, only: [:show, :index]
  end

  resources :artists, only: [:index, :show] do
    resources :songs, only: [:show, :index]
  end
end
