Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/pants" => "pant#index"
  get "/pants/:id" => "pant#show"
  post "/pants" => "pant#create"
  delete "/pants/:id" => "pant#destroy"
  patch "/pants/:id" => "pant#update"
end
