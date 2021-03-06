Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :todo_lists
  
  root to:"main#index"

  #root to:"signin_todo#sessiontodo"

  get "about",to:"about#index"

  post "sign_in",to:"signin_todo#sessiontodo"

  get "sign_up",to:"registration#new"
  post "sign_up",to:"registration#create"

  get "sign_in",to:"session#new"
  #post "sign_in",to:"session#create"

  delete "logout",to:"session#destroy"

  get "password",to:"password#edit", as: :edit_password
  patch "password",to:"password#update"

  get "password/reset",to:"password_reset#new"
  post "password/reset",to:"password_reset#create"

  get "password/reset/edit",to:"password_reset#edit"
  patch "password/reset/edit",to:"password_reset#update"

  get "todays_list",to:"today#todaystask"
  
  get "upcoming_list",to:"upcoming#upcomingtask"

end
