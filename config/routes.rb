Rails.application.routes.draw do
  resources :loans
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :homes

  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }

  devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions" }

  root controller: :loans, action: :index
end
