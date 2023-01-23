Rails.application.routes.draw do
  resources :services
  resources :doctors
  resources :appointments
  resources :patients
  post '/login', to: 'patient_auth#create'
  post '/doctor_login', to: 'doctor_auth#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
