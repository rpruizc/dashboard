Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'loans#index'

  resources :loans

  resources :homes

  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }

  devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions" }

  get 'dashboard', to: 'homes#index'

end
