Rails.application.routes.draw do
  root to: "employees#index"

  resources :titles
  resources :dept_managers
  resources :departments
  resources :dept_emps
  resources :salaries
  resources :employees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
