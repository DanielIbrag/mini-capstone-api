Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/all_products" => "products#get_all_products"
  get "/product1" => "products#product1"
  get "/product2" => "products#product2"
  get "/single_route/" => "products#single_route"
end
