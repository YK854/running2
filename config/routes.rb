Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :photos do
    resources :coms ,only:[:create,:destroy]
  end

  resources :users, only:[:index,:show,:edit,:update,:destroy]
end
