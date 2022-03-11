class ProductsController < ApplicationController
  def get_all_products
    products = Product.all
    render json: products.as_json
  end

  def product1
    product1 = Product.first
    render json: product1.as_json
  end

  def product2
    product2 = Product.find(2)
    render json: product2.as_json
  end

  def single_route
    single_route = Product.find_by(id: params["id"])
    render json: single_route
  end
end
