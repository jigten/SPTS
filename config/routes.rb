Rails.application.routes.draw do
  resources :student_profiles

  root 'student_profiles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
