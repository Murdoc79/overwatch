Rails.application.routes.draw do
  resources :building_stages
  get 'reports/main'

  root 'reports#main'

  resources :job_sites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
