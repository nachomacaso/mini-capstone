Rails.application.routes.draw do
  get '/' => 'products#index'
  get '/sneakers' => 'products#index'
  
  get '/sneakers/random' => 'products#random'

  get '/sneakers/new' => 'products#new'
  post '/sneakers' => 'products#create'

  get '/sneakers/:id' => 'products#show'

  get '/sneakers/:id/edit' => 'products#edit'
  patch '/sneakers/:id' => 'products#update'

  delete '/sneakers/:id' => 'products#destroy'

  get '/suppliers' => 'suppliers#index'
  
  get '/suppliers/random' => 'suppliers#random'

  get '/suppliers/new' => 'suppliers#new'
  post '/suppliers' => 'suppliers#create'

  get '/suppliers/:id' => 'suppliers#show'

  get '/suppliers/:id/edit' => 'suppliers#edit'
  patch '/suppliers/:id' => 'suppliers#update'

  delete '/suppliers/:id' => 'suppliers#destroy'  
end
