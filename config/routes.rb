Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :messages, only: [:index, :create]
  resources :clips, only: [:create, :show, :destroy]
  resources :users, only: [:update, :destroy]
  get "/user/:id/clips", to: "users#clips", as: 'user_clips'
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "static#home"
end
