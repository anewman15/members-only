Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  resources :posts, only: [:new, :create, :index]
  
  devise_scope :user do
    root 'users/sessions#new'
  end
end
