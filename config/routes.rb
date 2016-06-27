Rails.application.routes.draw do
  resources :plans
  resources :mentorships
  resources :messages
  devise_for :users, :controllers => { registrations: 'registrations' }

  root to: "home#index"

  get "/user/dashboard" => "dashboard#view"

  get "/about" => "pages#about"

  #/////////////////////////////

  #Concerning: devise_for :users, :controllers => { registrations: 'registrations' }

  # This action from above tells Devise to use my custom registrations_controller.rb in order to accomodate first_name, last_name, is_a_coach, and is_an_admin columns in our User model (http://jacopretorius.net/2014/03/adding-custom-fields-to-your-devise-user-model-in-rails-4.html):

  #/////////////////////////////
  
end
