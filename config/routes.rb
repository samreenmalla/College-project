Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'sessions/new'
  root 'posts#index'
  get 'static_pages/donation'
  get 'tags/:tag', to: 'ideas#index', as: :tag

  resources :posts
  resources :ideas
  resources :donations
  resources :users, only: :show

end



