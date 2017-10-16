Rails.application.routes.draw do
  resources :notes
  resources :builders
  resources :building_stages
  resources :job_sites
  

  get 'reports/main'


  root 'reports#main'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
