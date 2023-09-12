Rails.application.routes.draw do
  get 'wellcome/index'
  resources :comments
  resources :galleries
  devise_for :users, controllers:{
    sessions:'users/sessions',
    registrations: 'users/registrations'
}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "wellcome#index"
end
