Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/all_products", controller: "products", action: "get_all_products"
  get "/product1", controller: "products", action: "product1"
  get "/product2", controller: "products", action: "product2"
end
