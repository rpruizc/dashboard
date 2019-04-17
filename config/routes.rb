Rails.application.routes.draw do
  resources :homes

  devise_for :users, :controllers => {:registrations => "registrations"}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root controller: :homes, action: :index
end
