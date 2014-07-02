Rails.application.routes.draw do
  # CREATE
  get '/new/idea' => 'ideas#new'
  get '/create/idea' => 'ideas#create'
  
  # READ
  get 'ideas/:id' => 'ideas#show'
  get '/ideas' => 'ideas#index'
  
  # UPDATE
  get 'ideas/:id/edit' => 'ideas#edit'
  get 'ideas/:id/update' => 'ideas#update'
  
  # DESTROY
  get '/ideas/:id/destroy' => 'ideas#destroy'
end
