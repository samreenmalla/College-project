Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'sessions/new'
  root 'application#hello'
end
