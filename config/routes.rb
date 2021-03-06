Rails.application.routes.draw do
  resources :lesson_types
  resources :student_contracts
  resources :subscribers
  resources :lectures
  resources :levels
  resources :students
  resources :contracts
  resources :activity_types
  resources :reservations
  resources :rules
  resources :lessons
  resources :teachers
  resources :activity_rules
  resources :activities
  resources :schools
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
