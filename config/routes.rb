Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/' => 'home#sign_in'
  get '/index' => 'home#index'
  #get '/result' => 'home#checkInfo'
  get '/create' => 'home#create'
  get '/list' => 'home#list'
  get '/sign_in' => 'home#sign_in'
  get '/wrong_signed' => 'home#wrong_signed'
  get '/modify/:id' => 'home#modify'
  get '/update/:id' => 'home#update'
  get '/delete/:id' => 'home#delete'
  # Defines the root path route ("/")
  # root "articles#index"
end
