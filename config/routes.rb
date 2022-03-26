Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :photos
  resources :users, only:[:index,:show,:edit,:update,:destroy]
end
