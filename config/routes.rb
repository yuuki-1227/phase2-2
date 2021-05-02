Rails.application.routes.draw do

  devise_for :users

  resources :users,only: [:show,:index,:edit,:update]
  resources :books,only: [:show,:index,:edit,:update,:create,:destroy]
  root to: 'homes#top'
  get 'homes/about' => 'homes#about'


end