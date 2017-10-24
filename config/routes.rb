Rails.application.routes.draw do
  
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :supervisors
  resources :areas
  resources :notes
  resources :builders
  resources :building_stages
  resources :images, only: [:create, :destroy]
  resources :job_sites do 
  	resources :notes
  end
  

  get 'reports/main'


  root 'reports#main'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
