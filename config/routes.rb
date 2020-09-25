Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  resources :posts, only: [:new, :create, :index]
  
  devise_scope :post do
    root 'posts#index'
  end
end
